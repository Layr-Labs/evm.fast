import InitECandidate.Proofs.FrontendStages.SourceAgreement

set_option autoImplicit false

/-! The first frontend stage reuses separately checked AST/simplification
agreements instead of evaluating the complete source again. -/
namespace InitECandidate.Proofs.FrontendStages
open Flapjack

def pass0 : List (Pancake.PanLang.DeclHOL 64) := Declarations.simplifieds

theorem pass0_eq : panSimpDeclsHOL InitE.sourceDeclarations = pass0 :=
  Declarations.panSimpSource_eq

#print axioms pass0_eq
end InitECandidate.Proofs.FrontendStages
