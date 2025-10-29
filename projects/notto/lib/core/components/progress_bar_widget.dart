import 'package:flutter/material.dart';

class ProgressBarWidget extends StatelessWidget {
  final double progress; // 0.0 - 1.0

  const ProgressBarWidget({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bg = theme.colorScheme.surfaceVariant;

    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.0, end: progress.clamp(0.0, 1.0)),
      duration: const Duration(milliseconds: 450),
      builder: (context, value, child) {
        // Render the pill and place a clear label to the right so it never
        // blends into the gradient. The label animates with the same value.
        return Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 24.0,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    // background pill
                    Container(
                      height: 24.0,
                      decoration: BoxDecoration(
                        color: bg,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),

                    // filled portion (animated via FractionallySizedBox)
                    FractionallySizedBox(
                      widthFactor: value,
                      child: Container(
                        height: 24.0,
                        decoration: BoxDecoration(
                          // Derive accent color from progress (semantic):
                          // low -> warm/orange, mid -> blue, high -> green.
                          gradient: LinearGradient(
                            colors: _colorsForQuarter(value, theme),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: _colorsForQuarter(value, theme)
                                  .first
                                  .withOpacity(0.16),
                              blurRadius: 6.0,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(width: 10.0),

            // external label so it remains readable regardless of fill color
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, anim) => FadeTransition(
                opacity: anim,
                child: child,
              ),
              child: value >= 0.999
                  ? Row(
                      key: const ValueKey('completed'),
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.check_circle,
                          size: 18.0,
                          color: theme.colorScheme.primary,
                        ),
                        const SizedBox(width: 6.0),
                        Text(
                          'Completed',
                          style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: theme.colorScheme.onBackground),
                        ),
                      ],
                    )
                  : Container(
                      key: const ValueKey('percent'),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 6.0),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.06),
                            blurRadius: 4.0,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Text(
                        '${(value * 100).round()}%'.toString(),
                        style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: theme.colorScheme.onBackground),
                      ),
                    ),
            ),
          ],
        );
      },
    );
  }

  // Return a pair of colors for the gradient based on the progress value.
  List<Color> _colorsForQuarter(double v, ThemeData theme) {
    final cs = theme.colorScheme;
    final value = v.clamp(0.0, 1.0);

    // Four quarters: [0-25), [25-50), [50-75), [75-100]
    if (value < 0.25) {
      // gentle primary tint (light)
      return [
        Color.lerp(cs.primary, cs.surface, 0.7)!,
        Color.lerp(cs.primary, cs.secondary, 0.45)!,
      ];
    }

    if (value < 0.5) {
      // primary
      return [cs.primary, Color.lerp(cs.primary, cs.onPrimary, 0.5)!];
    }

    if (value < 0.75) {
      // secondary-focused
      return [cs.secondary, Color.lerp(cs.secondary, cs.surface, 0.35)!];
    }

    // top quarter: use tertiary (if available) or a success-green fallback
    final top = cs.tertiary;
    return [top, Color.lerp(top, cs.surface, 0.25)!];
  }
}
