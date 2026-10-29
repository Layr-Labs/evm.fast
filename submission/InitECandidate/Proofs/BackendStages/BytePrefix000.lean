import InitECandidate.Proofs.BackendStages.ByteSectionAgreement0
import InitECandidate.Proofs.BackendStages.ByteSectionAgreement1
import InitECandidate.Proofs.BackendStages.ByteSectionAgreement2
import InitECandidate.Proofs.BackendStages.ByteSectionAgreement4
import InitECandidate.Proofs.BackendStages.ByteSectionAgreement5
import InitECandidate.Proofs.BackendStages.ByteSectionAgreement6
import InitECandidate.Proofs.BackendStages.ByteSectionAgreement64
import InitECandidate.Proofs.BackendStages.ByteSectionAgreement65
import InitECandidate.Proofs.BackendStages.ByteCandidate000
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem prefix000_eq : [ByteData.bytes0, ByteData.bytes1, ByteData.bytes2, ByteData.bytes4, ByteData.bytes5, ByteData.bytes6, ByteData.bytes64, ByteData.bytes65].flatten = InitECandidate.bytes000 ++ piece65_1 := by
  simp only [section0_eq, section1_eq, section2_eq, section4_eq, section5_eq, section6_eq, section64_eq, section65_eq, candidate000_eq, List.flatten_cons, List.flatten_nil, List.append_assoc, List.append_nil, List.nil_append]
#print axioms prefix000_eq
end InitECandidate.Proofs.BackendStages.BytePieces
