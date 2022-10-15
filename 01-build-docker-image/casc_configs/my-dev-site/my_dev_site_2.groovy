pipelineJob('my_dev_site/my_dev_site_2_pr_builder') {
  definition {
    cpsScm {
      scm {
        git {
          remote {
            url('https://github.com/rojberr/my-dev-site-2.git')
          }
          branch('*/master')
        }
      }
      lightweight()
    }
  }
}