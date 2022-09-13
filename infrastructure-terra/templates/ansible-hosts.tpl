[digitaloceanjenkins]
%{ for ip in digitaloceandroplet_ip ~}
${ip}
%{ endfor ~}