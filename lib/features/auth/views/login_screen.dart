import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: const Color(0xFFF8F7F4),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.08),
                  spreadRadius: 2,
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xFF457A5C),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'ق',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                
                // App Title
                const Text(
                  'نور الإيمان',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1A1A1A),
                    letterSpacing: 0.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                
                // Subtitle
                const Text(
                  'تطبيق القرآن الكريم المتكامل',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF666666),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.3,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                
                // Welcome message
                const Text(
                  'أهلاً وسهلاً',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF457A5C),
                    letterSpacing: 0.4,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),
                
                // Google Login Button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle Google login
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('سيتم إضافة تسجيل الدخول باستخدام جوجل قريباً'),
                          backgroundColor: Color(0xFF457A5C),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF457A5C),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 2,
                      shadowColor: const Color(0xFF457A5C).withValues(alpha: 0.3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Icon(
                            Icons.g_mobiledata,
                            size: 20,
                            color: Color(0xFF457A5C),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: const Text(
                              'الدخول باستخدام جوجل',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 48),
                
                // Footer links
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle privacy policy
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('سياسة الخصوصية'),
                            backgroundColor: Color(0xFF666666),
                          ),
                        );
                      },
                      child: const Text(
                        'سياسة الخصوصية',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF999999),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF999999),
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 12,
                      color: const Color(0xFFDDDDDD),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle terms and conditions
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('الشروط والأحكام'),
                            backgroundColor: Color(0xFF666666),
                          ),
                        );
                      },
                      child: const Text(
                        'الشروط والأحكام',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF999999),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF999999),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}