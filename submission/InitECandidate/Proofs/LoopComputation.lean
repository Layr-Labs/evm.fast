import InitECandidate.Proofs.LoopKernelComputation
import InitECandidate.Proofs.CrepComposition
import Flapjack.Pancake.CrepToLoop.ContextExact

set_option autoImplicit false
namespace InitECandidate.Proofs.LoopComputation
open Flapjack

def compileEntry {width : Nat} [NeZero width]
    (arch : Compiler.Encoders.Asm.AsmArchitecture)
    (fs : HolFiniteMapExact Basis.Pure.MlString.MlString (Nat × Nat))
    (input : Nat × Basis.Pure.MlString.MlString × List Nat × CrepProgHOL width) :
    Nat × List Nat × HolLoopProg width :=
  (input.1, List.range input.2.2.1.length,
    optimiseHOL (compFuncHOLExact arch fs input.2.2.1 (crepSimpProgHOL input.2.2.2)))

theorem map_eq_checked {α β : Type} (f : α → β)
    (inputs : List α) (outputs : List β)
    (checked : InitECandidate.Proofs.CrepComputation.checkedOutputs (fun x => some (f x)) inputs outputs) :
    inputs.map f = outputs := by
  rw [← List.filterMap_eq_map']
  exact InitECandidate.Proofs.CrepComputation.filterMap_eq_checked _ _ _ checked

def functionEntries {α β γ : Type} (prog : List (α × List β × γ)) :
    List (α × (Nat × Nat)) :=
  ((prog.zip (List.range prog.length)).map
    (fun entry => (entry.1.1, (firstLoopName + entry.2, entry.1.2.1.length)))).reverse

theorem makeFuncs_congr {α β γ δ : Type} [BEq α] [LawfulBEq α]
    (xs : List (α × List β × γ)) (ys : List (α × List β × δ))
    (h : functionEntries xs = functionEntries ys) :
    crepToLoopMakeFuncsExactExecutable xs = crepToLoopMakeFuncsExactExecutable ys := by
  unfold crepToLoopMakeFuncsExactExecutable
  change HolFiniteMapExact.updateList HolFiniteMapExact.empty (functionEntries xs) =
    HolFiniteMapExact.updateList HolFiniteMapExact.empty (functionEntries ys)
  rw [h]

theorem compileProg_decompose {width : Nat} [NeZero width]
    (arch : Compiler.Encoders.Asm.AsmArchitecture)
    (prog : List (Basis.Pure.MlString.MlString × List Nat × CrepProgHOL width)) :
    compileProgHOLExact arch prog =
      (((List.range prog.length).map (fun n => n + firstLoopName)).zip prog).map
        (compileEntry arch (crepToLoopMakeFuncsExactExecutable prog)) := by
  unfold compileProgHOLExact
  rw [List.zip_eq_zipWith, List.map_zipWith]
  rfl

#print axioms makeFuncs_congr
#print axioms compileProg_decompose

#print axioms map_eq_checked
end InitECandidate.Proofs.LoopComputation
