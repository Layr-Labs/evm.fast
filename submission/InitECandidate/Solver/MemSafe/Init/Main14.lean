import InitECandidate.Solver.MemSafe.Init.Main13
import InitECandidate.Solver.Compiler.FrontEnd.Basic

/-!
# Init: `PInit` holds at every post-declaration state (the `hP` of `Final.certificate_of_main_costP`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false
set_option cbv.maxSteps 4000000000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec Flapjack.Basis.Pure.MlString

theorem pInit_of_decls (input : Guest.InputBlob) (st : StructContextExact)
    {_ : DecidablePred ({ InitE.sourceInitialState input with structs := st }).memaddrs}
    (s' : PanSemStateFiniteExact 64 Guest.HostMemory)
    (h : evaluateDeclsHOLFinite { InitE.sourceInitialState input with structs := st }
      (Guest.Software.guestAst.map declToHOL) = some s') : PInit s' := by
  obtain ⟨hb, -, hd⟩ := decls_def _ _ _ s' h
  refine ⟨guestDecls_globals_zero input st s' h, fun g hg => hd g ?_, hb⟩
  · have := List.all_eq_true.mp initNames_declared g hg
    exact this

/-- `PInit` holds at every state after the declarations, for every starting clock. -/
theorem pInit_of_panDeclsInit (input : Guest.InputBlob) {s0 : PanSemStateFiniteExact 64 Guest.HostMemory}
    (hdecls : Compiler.FrontEnd.panDeclsInit (InitE.sourceInitialState input)
      (Guest.Software.guestAst.map Pancake.PanLang.declToHOL) = some s0) (k : Nat) :
    PInit { s0 with clock := k } := by
  unfold Compiler.FrontEnd.panDeclsInit at hdecls
  split at hdecls
  · cases hdecls
  · rename_i st _
    exact pInit_of_decls input st s0 hdecls

end InitECandidate.Solver.MemSafe.Init

#print axioms InitECandidate.Solver.MemSafe.Init.pInit_of_panDeclsInit
#print axioms InitECandidate.Solver.MemSafe.Init.G_of_wi
#print axioms InitECandidate.Solver.MemSafe.Init.ichk_sound
#print axioms InitECandidate.Solver.MemSafe.Init.cost_rest
#print axioms InitECandidate.Solver.MemSafe.Init.cost_main_body
#print axioms InitECandidate.Solver.MemSafe.Init.fs_fork
