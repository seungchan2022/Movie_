import Foundation
import UIKit

struct ProfileEffector {
  let navigator: NavigatorType
  let diContainer: DIContainerType
}

extension ProfileEffector {
  
  @MainActor
  var routeToMovieDetail: () -> Void {
    {
      navigator.push(
        featureName: Link.movieListDetail.rawValue,
        items: [:],
        isAnimation: true)
    }
  }
  
  var itemList: () async -> [ProfileStore.State.ScopeItem] {
    {
      let _ = try? await Task.sleep(for: .zero)
      
      return [
        .init(
          image: UIImage(named: "fastx"),
          title: "분노의 질주"),
        .init(
          image: UIImage(
          named: "transformer"),
              title: "트랜스포머"),
        .init(
          image: UIImage(named: "spiderman"),
          title: "스파이더맨"),
      ]
    }
  }
}
