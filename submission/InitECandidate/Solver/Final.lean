import InitE
import InitECandidate.Proofs.FullBaseline
import InitECandidate.Proofs.BaselineSubmission
import InitECandidate.Solver.Bootstrap
import InitECandidate.Solver.Assembly
import InitECandidate.Solver.Concrete
import InitECandidate.Solver.Spec.Inv.CostI
import InitECandidate.Solver.SourceCost.InitGlobals

/-!
# The finite-K certificate, parametrised by the bound on `main`

`baselineProgramBounds` discharges every concrete compiler side condition. The
remaining input is the kernel-checked cost table's entry for `main`: once the analyzer
bounds `main` by `Bm`, `certificate_of_main_bound` gives `InitE.Certificate` for the
unchanged baseline ROM at
`K = 138390 + nativeStepBound (1 + Bm) crepS wordS stackS`.
-/

namespace InitECandidate.Solver.Final
open InitE Flapjack Flapjack.RiscV.L3 Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Encoders.Asm
open Flapjack.Basis.Pure.MlString
open InitECandidate.Proofs.BootstrapSteps InitECandidate.Proofs.BootstrapCopy
open InitECandidate.Solver.Assembly

theorem baselineProgramBounds :
    BaselineProgramBounds Concrete.crepS Concrete.wordS Concrete.stackS where
  sc_ge := Concrete.three_le_crepS
  sw_ge := Concrete.one_le_wordS
  crep := Concrete.Crep.crep_code_csize
  word := Concrete.Word.programs_wsize
  noA := Concrete.Stack.stack_noA
  okP := Concrete.Stack.stack_okP
  stack := Concrete.Flat.code2_psize

/-- Total step bound: bootstrap plus native part. -/
def totalBound (Bm : Nat) : Nat :=
  138390 + nativeStepBound (1 + Bm) Concrete.crepS Concrete.wordS Concrete.stackS

def withScore (s : Submission) (k : NatE) : Submission := { s with K := k }

theorem withScore_machineConfig (s : Submission) (k : NatE) :
    (withScore s k).machineConfig = s.machineConfig := rfl

theorem withScore_initialState (s : Submission) (k : NatE) (input : Guest.InputBlob) :
    (withScore s k).initialState input = s.initialState input := rfl

theorem withScore_admitted (s : Submission) (k : NatE) (h : s.Admitted) :
    (withScore s k).Admitted :=
  ⟨h.code_nonempty, h.code_limit, h.anchor_lower, h.anchor_upper, h.anchor_aligned,
    h.name_boundary, h.metadata_length, h.ordinary_slots_loaded, h.mmio_valid, h.entry_distinct,
    h.entry_loaded, h.entry_aligned, h.entry_dispatch_separate, h.mmio_program, h.exit_loaded,
    h.layout_bound⟩

/-- The certificate, given any sound cost table with a bound for `main` (instantiated
with the kernel-checked `Shards.finalState` once `main` is bounded). -/
theorem certificate_of_main_bound {st : SourceCost.TblState}
    (hst : SourceCost.StateSound Guest.HostMemory SourceCost.guestCtx st) (Bm : Nat)
    (hm : st.1.lookup (ofString "main") = some Bm) :
    Certificate (withScore baselineSubmission (.finite (totalBound Bm)))
      (.finite (totalBound Bm)) := by
  refine ⟨rfl, withScore_admitted _ _ baselineSubmission_admitted, ?_⟩
  intro input _gas outcome events source covered
  obtain ⟨count, post, shift, related, hcount⟩ :=
    InitECandidate.Solver.Bootstrap.full_evaluator_bounded (sourceFfi input)
      (baselineInitialState input) (baselineInitialState_related input)
  obtain ⟨n, hn, post', ffi', run, ev⟩ :=
    native_halts_within_param_of_table Bm Concrete.crepS Concrete.wordS Concrete.stackS
      hst hm baselineProgramBounds
      input outcome events source post related
  refine ⟨count + n, ?_, outcome, post', ffi', ?_, ?_⟩
  · show count + n ≤ totalBound Bm
    unfold totalBound
    omega
  · rw [withScore_machineConfig, withScore_initialState, baselineSubmission_machineConfig,
      baselineSubmission_initialState, shift, run]
  · rw [ev]
    exact matchingResult_refl input outcome events covered

/-- Total step bound from a clock bound `Bsrc` of the source call of `main`. -/
def totalBoundSrc (Bsrc : Nat) : Nat :=
  138390 + nativeStepBound Bsrc Concrete.crepS Concrete.wordS Concrete.stackS

/-- The certificate from a clock bound of `main` at the post-declaration states of the source
run (`SrcBoundAt`). This is the form a conditional cost of `main` provides. -/
theorem certificate_of_srcBound (Bsrc : Nat)
    (hsrc : ∀ input s0, Compiler.FrontEnd.panDeclsInit (sourceInitialState input)
      (Guest.Software.guestAst.map Pancake.PanLang.declToHOL) = some s0 →
        SourceCost.SrcBoundAt s0 (ofString "main") Bsrc) :
    Certificate (withScore baselineSubmission (.finite (totalBoundSrc Bsrc)))
      (.finite (totalBoundSrc Bsrc)) := by
  refine ⟨rfl, withScore_admitted _ _ baselineSubmission_admitted, ?_⟩
  intro input _gas outcome events source covered
  obtain ⟨count, post, shift, related, hcount⟩ :=
    InitECandidate.Solver.Bootstrap.full_evaluator_bounded (sourceFfi input)
      (baselineInitialState input) (baselineInitialState_related input)
  obtain ⟨n, hn, post', ffi', run, ev⟩ :=
    native_halts_within_param_src Bsrc Concrete.crepS Concrete.wordS Concrete.stackS
      baselineProgramBounds input (hsrc input) outcome events source post related
  refine ⟨count + n, ?_, outcome, post', ffi', ?_, ?_⟩
  · show count + n ≤ totalBoundSrc Bsrc
    unfold totalBoundSrc
    omega
  · rw [withScore_machineConfig, withScore_initialState, baselineSubmission_machineConfig,
      baselineSubmission_initialState, shift, run]
  · rw [ev]
    exact matchingResult_refl input outcome events covered

/-- A conditional cost of `main` (`Spec.Inv.CostP` in `guestCtx`) whose precondition holds at
every post-declaration state, for every starting clock, gives the source clock bound. -/
theorem srcBound_of_costP {P : PanSemStateFiniteExact 64 Guest.HostMemory → Prop} {B : Nat}
    (hc : Spec.Inv.CostP Guest.HostMemory SourceCost.guestCtx P (.call none (ofString "main") []) B)
    (hP : ∀ input s0, Compiler.FrontEnd.panDeclsInit (sourceInitialState input)
      (Guest.Software.guestAst.map Pancake.PanLang.declToHOL) = some s0 →
        ∀ k, P { s0 with clock := k }) :
    ∀ input s0, Compiler.FrontEnd.panDeclsInit (sourceInitialState input)
      (Guest.Software.guestAst.map Pancake.PanLang.declToHOL) = some s0 →
        SourceCost.SrcBoundAt s0 (ofString "main") B :=
  fun input s0 hdecls k hg =>
    have hX : SourceCost.InCtx s0 SourceCost.guestCtx := inCtx_of_panDeclsInit input hdecls
    hc { s0 with clock := k } hX (hP input s0 hdecls k) hg

/-- The certificate from a conditional cost of `main`. -/
theorem certificate_of_main_costP {P : PanSemStateFiniteExact 64 Guest.HostMemory → Prop}
    {B : Nat}
    (hc : Spec.Inv.CostP Guest.HostMemory SourceCost.guestCtx P (.call none (ofString "main") []) B)
    (hP : ∀ input s0, Compiler.FrontEnd.panDeclsInit (sourceInitialState input)
      (Guest.Software.guestAst.map Pancake.PanLang.declToHOL) = some s0 →
        ∀ k, P { s0 with clock := k }) :
    Certificate (withScore baselineSubmission (.finite (totalBoundSrc B)))
      (.finite (totalBoundSrc B)) :=
  certificate_of_srcBound B (srcBound_of_costP hc hP)

/-- Every defined global of a post-declaration state of the source run holds `0`, for every
starting clock. It is the main fact a precondition of `main` can rely on. -/
theorem globalsZero_of_panDeclsInit (input : Guest.InputBlob)
    {s0 : PanSemStateFiniteExact 64 Guest.HostMemory}
    (hdecls : Compiler.FrontEnd.panDeclsInit (sourceInitialState input)
      (Guest.Software.guestAst.map Pancake.PanLang.declToHOL) = some s0) (k : Nat) :
    SourceCost.GlobalsZero { s0 with clock := k } := by
  unfold Compiler.FrontEnd.panDeclsInit at hdecls
  split at hdecls
  · cases hdecls
  · rename_i st _
    exact SourceCost.guestDecls_globals_zero input st s0 hdecls

end InitECandidate.Solver.Final

#print axioms InitECandidate.Solver.Final.baselineProgramBounds
#print axioms InitECandidate.Solver.Final.certificate_of_main_bound
#print axioms InitECandidate.Solver.Final.certificate_of_srcBound
#print axioms InitECandidate.Solver.Final.certificate_of_main_costP
#print axioms InitECandidate.Solver.Final.globalsZero_of_panDeclsInit
