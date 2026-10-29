import InitECandidate.Proofs.FrontendStages.Pass0
import InitECandidate.Proofs.FrontendStages.StructFacts

/-! The second frontend stage reuses context-general declaration certificates. -/
namespace InitECandidate.Proofs.FrontendStages
open Flapjack

def pass1 : List (Pancake.PanLang.DeclHOL 64) := pass0

theorem pass1_eq : Pancake.PanStructs.CompileShapeExact.compileTopExact pass0 = pass1 :=
  Declarations.structSource_eq

#print axioms pass1_eq
end InitECandidate.Proofs.FrontendStages
