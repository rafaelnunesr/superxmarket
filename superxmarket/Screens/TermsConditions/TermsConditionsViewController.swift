//
//  TermsConditionsViewController.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/15/21.
//

import UIKit

class TermsConditionsViewController: UIViewController {
    
    let scrollView: UIScrollView = UIScrollView()
    let termsConditions: UILabel = UILabel()
    let dismissButton: UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    private func setup() {
        self.setSubviews()
        self.setupScrollView()
        self.setupTermsConditions()
        self.setupDismissButton()
    }
    
    private func setSubviews() {
        self.view.addSubview(self.scrollView)
        self.scrollView.addSubview(self.termsConditions)
        self.scrollView.addSubview(self.dismissButton)
    }
    
    private func setupScrollView() {
        self.addScrollViewConstraints()
        self.scrollView.backgroundColor = Colors.backgroundGray
        self.scrollView.alwaysBounceVertical = true
        self.scrollView.contentSize.width = 0
        //contentViewWidthContraint.constant = self.view.bounds.size.width
    }

    private func addScrollViewConstraints() {

        self.scrollView.translatesAutoresizingMaskIntoConstraints = false

        var constraints = [NSLayoutConstraint]()

        constraints.append(self.scrollView.topAnchor.constraint(equalTo: self.view.topAnchor))
        constraints.append(self.scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor))
        constraints.append(self.scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor))
        constraints.append(self.scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor))

        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupTermsConditions() {
        self.addTermsConditionsConstraints()
        self.termsConditions.textColor = .darkGray
        self.termsConditions.font = UIFont.robotoMedium(size: 14)
        self.termsConditions.lineBreakMode = .byWordWrapping
        self.termsConditions.numberOfLines = 0
        
        self.termsConditions.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ornare turpis dolor, non volutpat risus pharetra nec. Sed leo diam, tincidunt vel sodales et, suscipit ut felis. Morbi molestie urna nisi, sed ullamcorper nisl condimentum eu. Suspendisse ullamcorper urna ac purus mollis, placerat scelerisque metus molestie. Sed consectetur in sapien in gravida. Morbi fermentum sem eget tellus semper sollicitudin. Vivamus enim mi, sagittis a mauris vel, fermentum tristique sapien. Nam finibus urna id erat tincidunt imperdiet. Donec augue turpis, feugiat in ante ut, euismod lobortis lacus. Proin at arcu neque. Aenean commodo a felis et egestas. Aenean eleifend nulla nec accumsan lacinia. Suspendisse at tortor sit amet urna fermentum blandit. Mauris congue pharetra pellentesque. Ut augue ante, egestas porttitor erat id, molestie egestas velit. Aenean feugiat, mi id maximus ornare, felis velit iaculis felis, sed cursus velit nisl at ante. Suspendisse eget quam semper, blandit elit nec, rutrum orci. Nam et mi auctor turpis dignissim ornare. Proin dictum mollis tortor, id posuere risus pellentesque ac. Aliquam laoreet lorem quam, sed fermentum diam blandit in. Ut et ex est. Mauris varius scelerisque nulla, eu aliquam dui scelerisque vitae. Nunc auctor libero nec justo scelerisque, eget sagittis libero pretium. Nam eleifend lacinia ex. Donec vel tincidunt enim. Curabitur in consectetur sem. Fusce quis volutpat est, sit amet mattis velit. Praesent bibendum risus id placerat fringilla. Nam ullamcorper, lorem quis facilisis viverra, ipsum turpis sagittis arcu, ac tempor neque odio a nibh. Aliquam erat volutpat. Cras aliquet a tortor sed rutrum. Praesent tempor volutpat malesuada. Aliquam et magna at odio accumsan posuere ut vitae ligula. Donec bibendum laoreet sem, ut accumsan ex lacinia tempus. Duis faucibus rhoncus lectus eu imperdiet. Morbi mollis urna facilisis, pharetra neque ut, hendrerit magna. Sed sed tincidunt odio, non iaculis arcu. Donec vitae massa urna. Cras imperdiet, enim et scelerisque aliquet, neque arcu dapibus est, semper maximus augue est et libero. Fusce consequat cursus massa at posuere. Cras commodo tortor et sapien aliquam, ac sollicitudin turpis mollis. Vestibulum eget blandit risus. Integer ipsum dolor, dictum sed orci et, tempus vestibulum augue. Duis ultrices, ante a posuere semper, lacus nisl suscipit elit, a molestie magna mi eu dui. Aenean blandit lectus interdum, cursus odio in, ullamcorper metus. Maecenas rhoncus diam ac facilisis lobortis. Praesent vitae leo accumsan, placerat elit nec, congue nunc. Fusce dolor urna, aliquet id ante non, cursus finibus est. Duis at placerat eros, vel dignissim mi. Aliquam venenatis leo quis ex malesuada luctus. Suspendisse eget commodo risus, vitae fringilla lectus. Integer dapibus felis et justo porta lobortis. Proin tempor velit lorem, at porta eros ultricies et. Vestibulum malesuada posuere leo non placerat. Nulla ut metus eros. Maecenas tincidunt, justo quis rutrum tincidunt, ante neque varius nibh, quis auctor felis elit a sapien. Cras vel pulvinar massa. Vestibulum cursus mollis lobortis. Integer efficitur nisl id odio tristique suscipit. Nunc nec dolor elit. Quisque auctor justo id massa tincidunt, in mollis lacus finibus. Nulla sodales tempus viverra. Praesent magna erat, venenatis at viverra nec, blandit id orci. Aliquam magna nunc, fermentum sit amet iaculis sit amet, maximus a lectus. Vestibulum gravida porttitor sapien. Nullam condimentum tellus dictum tellus fringilla cursus. Praesent eget efficitur ex, ut imperdiet quam. Duis tincidunt sit amet felis vel maximus. Fusce sit amet sodales elit. Vivamus at dictum risus, tincidunt volutpat justo. Praesent et blandit enim, at tempor leo. Ut egestas posuere tincidunt. Phasellus augue augue, vehicula placerat nunc eget, dapibus venenatis turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ornare turpis dolor, non volutpat risus pharetra nec. Sed leo diam, tincidunt vel sodales et, suscipit ut felis. Morbi molestie urna nisi, sed ullamcorper nisl condimentum eu. Suspendisse ullamcorper urna ac purus mollis, placerat scelerisque metus molestie. Sed consectetur in sapien in gravida. Morbi fermentum sem eget tellus semper sollicitudin. Vivamus enim mi, sagittis a mauris vel, fermentum tristique sapien. Nam finibus urna id erat tincidunt imperdiet. Donec augue turpis, feugiat in ante ut, euismod lobortis lacus. Proin at arcu neque. Aenean commodo a felis et egestas. Aenean eleifend nulla nec accumsan lacinia. Suspendisse at tortor sit amet urna fermentum blandit. Mauris congue pharetra pellentesque. Ut augue ante, egestas porttitor erat id, molestie egestas velit. Aenean feugiat, mi id maximus ornare, felis velit iaculis felis, sed cursus velit nisl at ante. Suspendisse eget quam semper, blandit elit nec, rutrum orci. Nam et mi auctor turpis dignissim ornare. Proin dictum mollis tortor, id posuere risus pellentesque ac. Aliquam laoreet lorem quam, sed fermentum diam blandit in. Ut et ex est. Mauris varius scelerisque nulla, eu aliquam dui scelerisque vitae. Nunc auctor libero nec justo scelerisque, eget sagittis libero pretium. Nam eleifend lacinia ex. Donec vel tincidunt enim. Curabitur in consectetur sem. Fusce quis volutpat est, sit amet mattis velit. Praesent bibendum risus id placerat fringilla. Nam ullamcorper, lorem quis facilisis viverra, ipsum turpis sagittis arcu, ac tempor neque odio a nibh. Aliquam erat volutpat. Cras aliquet a tortor sed rutrum. Praesent tempor volutpat malesuada. Aliquam et magna at odio accumsan posuere ut vitae ligula. Donec bibendum laoreet sem, ut accumsan ex lacinia tempus. Duis faucibus rhoncus lectus eu imperdiet. Morbi mollis urna facilisis, pharetra neque ut, hendrerit magna. Sed sed tincidunt odio, non iaculis arcu. Donec vitae massa urna. Cras imperdiet, enim et scelerisque aliquet, neque arcu dapibus est, semper maximus augue est et libero. Fusce consequat cursus massa at posuere. Cras commodo tortor et sapien aliquam, ac sollicitudin turpis mollis. Vestibulum eget blandit risus. Integer ipsum dolor, dictum sed orci et, tempus vestibulum augue. Duis ultrices, ante a posuere semper, lacus nisl suscipit elit, a molestie magna mi eu dui. Aenean blandit lectus interdum, cursus odio in, ullamcorper metus. Maecenas rhoncus diam ac facilisis lobortis. Praesent vitae leo accumsan, placerat elit nec, congue nunc. Fusce dolor urna, aliquet id ante non, cursus finibus est. Duis at placerat eros, vel dignissim mi. Aliquam venenatis leo quis ex malesuada luctus. Suspendisse eget commodo risus, vitae fringilla lectus. Integer dapibus felis et justo porta lobortis. Proin tempor velit lorem, at porta eros ultricies et. Vestibulum malesuada posuere leo non placerat. Nulla ut metus eros. Maecenas tincidunt, justo quis rutrum tincidunt, ante neque varius nibh, quis auctor felis elit a sapien. Cras vel pulvinar massa. Vestibulum cursus mollis lobortis. Integer efficitur nisl id odio tristique suscipit. Nunc nec dolor elit. Quisque auctor justo id massa tincidunt, in mollis lacus finibus. Nulla sodales tempus viverra. Praesent magna erat, venenatis at viverra nec, blandit id orci. Aliquam magna nunc, fermentum sit amet iaculis sit amet, maximus a lectus. Vestibulum gravida porttitor sapien. Nullam condimentum tellus dictum tellus fringilla cursus. Praesent eget efficitur ex, ut imperdiet quam. Duis tincidunt sit amet felis vel maximus. Fusce sit amet sodales elit. Vivamus at dictum risus, tincidunt volutpat justo. Praesent et blandit enim, at tempor leo. Ut egestas posuere tincidunt. Phasellus augue augue, vehicula placerat nunc eget, dapibus venenatis turpis."
    }
    
    private func addTermsConditionsConstraints() {
        self.termsConditions.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.termsConditions.topAnchor.constraint(equalTo: self.scrollView.topAnchor, constant: 16))
        constraints.append(self.termsConditions.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 16))
        constraints.append(self.termsConditions.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor, constant: -16))
        constraints.append(self.termsConditions.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor, constant: -70))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupDismissButton() {
        self.addDismissButtonConstraints()
        self.dismissButton.layer.cornerRadius = 10
        self.dismissButton.backgroundColor = Colors.mainPurple
        self.dismissButton.setTitle("Dismiss", for: .normal)
        self.dismissButton.addTarget(self, action: #selector(dismissTapped), for: .touchUpInside)
    }
    
    @objc private func dismissTapped() {
        dismiss(animated: true, completion: nil)
    }
    
    private func addDismissButtonConstraints() {
        self.dismissButton.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.dismissButton.topAnchor.constraint(equalTo: self.termsConditions.bottomAnchor, constant: 20))
        constraints.append(self.dismissButton.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 20))
        constraints.append(self.dismissButton.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor, constant: -20))
        constraints.append(self.dismissButton.heightAnchor.constraint(equalToConstant: 52))
        NSLayoutConstraint.activate(constraints)
    }

}
