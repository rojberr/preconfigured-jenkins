pipelineJob('my_dev_site/my-dev-site-3_pr_builder') {
  definition {
    cpsScm {
      scm {
        git {
          remote {
            url('https://github.com/rojberr/my-dev-site-3.git')
          }
          branch('*/master')
        }
      }
      lightweight()
    }
  }
}