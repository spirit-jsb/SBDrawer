Pod::Spec.new do |s|

    s.name        = 'SBDrawer'
    s.version     = '0.0.1'
    s.summary     = ''
  
    s.description = <<-DESC
                         
                         DESC
  
    s.homepage    = 'https://github.com/spirit-jsb/SBDrawer'
    
    s.license     = { :type => 'MIT', :file => 'LICENSE' }
    
    s.author      = { 'spirit-jsb' => 'sibo_jian_29903549@163.com' }
    
    s.swift_versions = ['5.0']
    
    s.ios.deployment_target = '11.0'
      
    s.source       = { :git => 'https://github.com/spirit-jsb/SBDrawer.git', :tag => s.version }
    s.source_files = ["Sources/**/*.swift"]
    
    s.requires_arc = true
  end
  
