import SwiftUI

struct AppTextField: View {

    let title: String
    let placeholder: String
    let icon: String

    @Binding var text: String

    let isSecure: Bool
    let accessibilityID: String

    var body: some View {

        VStack(alignment: .leading, spacing: 8) {

            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)

            HStack(spacing: 12) {

                Image(systemName: icon)
                    .foregroundStyle(.secondary)
                    .frame(width: 20)

                if isSecure {

                    SecureField(
                        placeholder,
                        text: $text
                    )
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .accessibilityIdentifier(accessibilityID)

                } else {

                    TextField(
                        placeholder,
                        text: $text
                    )
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .accessibilityIdentifier(accessibilityID)
                }
            }
            .padding()
            .background(
                Color(.secondarySystemBackground)
            )
            .clipShape(
                RoundedRectangle(
                    cornerRadius: 12
                )
            )
        }
    }
}
