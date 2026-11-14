import InitECandidate.Solver.MemSafe.CsrCost.Prefix
import InitECandidate.Solver.MemSafe.Eb.Cost2

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false
set_option cbv.warning false

/-!
# `compute_state_root`: the conditional cost (Band7)

The cost walk `cstage_cache0` (`CH` judgment) at the entry activation, with the bound `cb csr_cache_1`.
-/

namespace InitECandidate.Solver.MemSafe.CsrCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie InitECandidate.Solver.Band7

variable {σ : Type}

set_option maxHeartbeats 0 in
theorem csr_condCostTight :
    Eb.CondCostC σ (nm "compute_state_root") 1 Eb.CsrPre bCache := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  intro vs body callee rs hl
  have hl' := hl
  rw [guestCtx_code] at hl'
  obtain ⟨rfl, -, hlen, hbind⟩ := InitECandidate.Solver.MemSafe.lookupCode_gen code_csr hl'
  rintro s hs ⟨hloc, Γ, p, hG, hp, -, -, -, p1, hp1, hargs⟩ hg
  obtain ⟨v0, rfl⟩ : ∃ v0, vs = [v0] := by
    match vs, hlen with
    | [v0], _ => exact ⟨v0, rfl⟩
  obtain ⟨hb0, hsh0⟩ := hbind 0 (by decide) (by simp)
  obtain ⟨OUT, rfl⟩ := val_of_shapeEq_one hsh0
  rw [hp] at hp1
  cases hp1
  have hargsC : ArgsOK Types.guestC Γ p csrSig.params [.val (.word OUT)] := hargs
  have hreq : ReqOK capsX s Γ := by
    intro c hc hne
    simp only [capsX, HtabEntries.capsHT, insCaps, leafCaps, brCaps, List.cons_append, List.nil_append,
      List.append_assoc, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at hc
    rcases hc with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> exact absurd rfl hne
  obtain ⟨ha, hh⟩ := act_entry hF.hH hF.hC hF.hal hF.hAC hF.hNS (capsOK_csr csrSig) hG hp hargsC hreq
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) csrSig capsX [.val (.word OUT)] s Γ p with hadef
  have haC : a.C = Types.guestC := rfl
  have hCb : a.Cb = Types.guestC := rfl
  have haH : a.H = Hooks.guestHooksR (σ := σ) := rfl
  have hgr : a.sg.grows = true := rfl
  have hcI : capSub insCaps a.caps = true := capSub_csr1
  have hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true := capSub_csr2
  have hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true := capSub_csr3
  have hbuf0 : BufOK a.C Γ p OUT.toNat 32 := by
    obtain ⟨-, hv⟩ := ha.hargs0
    obtain ⟨w, hw, hb⟩ := hv 0 (.buf 32) (.val (.word OUT)) rfl rfl
    simp only [InitECandidate.Solver.MemSafe.wordOf, Option.some.injEq] at hw
    subst hw
    exact hb
  have hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32 :=
    fun s Γ q hh => bufOK_ext ha.hord0 (InitECandidate.Solver.MemSafe.heap_ord hh) hh.2.2.1 hh.2.2.2.1 hh.2.2.2.2.1 hbuf0
  have hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x := fun x hx =>
    Or.inr (Or.inl ⟨0, OUT, by simp [a, actOf, argW, InitECandidate.Solver.MemSafe.wordOf], Or.inl ⟨32, rfl, hx⟩⟩)
  let Rv0 : Gam → Ptrs → Mem → ValueHOL 64 → Prop := fun Γ' p' mm v =>
    RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ True
  have hRv : ∀ Γ q mm, Rv0 Γ q mm (.val (.word (BitVec.ofNat 64 0))) :=
    fun Γ q mm => ⟨fun i r w hr => by simp [a, actOf, csrSig] at hr, trivial⟩
  have hkv0 : Trie.LV [(nm "out", ValueHOL.val (.word OUT))] s.locals := by
    intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    subst hq
    rw [hloc]
    exact hb0
  have HC := stage_cache0 ha haC hCb haH hgr hcI hcH hcC (B := [(nm "out", ValueHOL.val (.word OUT))]) (OUT := OUT) (List.mem_cons_self ..)
    (fun q hq => by
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
      subst hq
      dsimp only
      decide)
    hOutB hOutF hRv
  exact HC.2 s hs ⟨hkv0, Γ, p, ext_refl _, hh, scrOld_refl _, trivial⟩ hg

end InitECandidate.Solver.MemSafe.CsrCost

#print axioms InitECandidate.Solver.MemSafe.CsrCost.csr_condCostTight

namespace InitECandidate.Solver.MemSafe.CsrCost
variable {σ : Type}
def bound : Nat := 66931011924003819429423923558987842733099444390525250343783444979
theorem bound_eq : bCache = bound := by decide +kernel
theorem hypCsrCost : InitECandidate.Solver.MemSafe.Eb.HypCsrCost σ bound :=
  InitECandidate.Solver.Spec.Inv.CalleeCostP.mono csr_condCostTight (by rw [bound_eq])
#print axioms hypCsrCost
end InitECandidate.Solver.MemSafe.CsrCost
