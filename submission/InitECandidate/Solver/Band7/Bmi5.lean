import InitECandidate.Solver.Band7.Bmi4

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false
set_option cbv.warning false
set_option cbv.maxSteps 4000000000

/-!
# `build_mpt_indexed`: the conditional cost (Band7)

The run from `s` and the ghost run from `zeroSt s` (`MemSafe/Trie/BmiFinal.lean`) have the same result and the same
clock (`gr_preserved`), so the cost bound proved at the ghost activation (`c_top`) is the cost of the real run.
-/

namespace InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}

set_option maxHeartbeats 0 in
theorem bmi_condCost7 :
    Eb.CondCostC σ (nm "build_mpt_indexed") 3 Eb.BmiPreC bTop := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  intro vs body callee rs hl
  have hl' := hl
  rw [guestCtx_code] at hl'
  obtain ⟨rfl, -, hlen, hbind⟩ := MemSafe.lookupCode_gen code_bmi hl'
  rintro s hs ⟨hloc, Γ, p, hG, hp, -, -, -, p1, hp1, ⟨hargs, hbmi, -⟩⟩ hg
  obtain ⟨A, N, OUT, rfl, p0, hp0, harr⟩ := hbmi
  have hA := hargs
  rw [hp] at hp1 hp0
  cases hp1
  cases hp0
  obtain ⟨hord, hLy⟩ : p.Ordered ∧ Layout Types.guestC p Γ := by
    obtain ⟨p', hp', ho, hL, -⟩ := hG
    rw [hp] at hp'
    cases hp'
    exact ⟨ho, hL⟩
  have hkv : Trie.LV (kvA A N OUT) s.locals := by
    intro q hq
    simp only [Trie.kvA, List.mem_cons, List.not_mem_nil, or_false] at hq
    rw [hloc]
    rcases hq with rfl | rfl | rfl
    · exact (hbind 0 (by decide) (by simp)).1
    · exact (hbind 1 (by decide) (by simp)).1
    · exact (hbind 2 (by decide) (by simp)).1
  have hbufOUT : BufOK Types.guestC Γ p OUT.toNat 32 := by
    obtain ⟨-, hv⟩ := hA
    obtain ⟨w, hw, hb⟩ := hv 2 (.buf 32) (.val (.word OUT)) rfl rfl
    simp only [MemSafe.wordOf, Option.some.injEq] at hw
    subst hw
    exact hb
  have hG0 : G Types.guestC (Hooks.guestHooksR (σ := σ)) (kept Γ) (zeroSt s) := ghost_G hG
  have hp0' : ptrsOf (zeroSt s) = some p := (ptrsOf_zero s).trans hp
  have hargsK : ArgsOK Types.guestC (kept Γ) p bmiSig.params [.val (.word A), .val (.word N), .val (.word OUT)] := by
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | _ | i <;> simp [bmiSig] at hpt hv
    · subst hpt; trivial
    · subst hpt; trivial
    · subst hpt; subst hv; exact ⟨OUT, rfl, bufOK_kept hord hLy hbufOUT⟩
  have hreq : ReqOK insCaps (zeroSt s) (kept Γ) := by
    intro c hc hne
    simp only [insCaps, leafCaps, brCaps, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil,
      or_false] at hc
    rcases hc with rfl | rfl <;> exact absurd rfl hne
  obtain ⟨ha, hh⟩ := act_entry hF.hH hF.hC hF.hal hF.hAC hF.hNS (capsOK_ins bmiSig) hG0 hp0' hargsK hreq
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) bmiSig insCaps
    [.val (.word A), .val (.word N), .val (.word OUT)] (zeroSt s) (kept Γ) p with hadef
  have hOutB : ∀ (s' : State σ) (Γ' : Gam) (q : Ptrs), Heap a Γ' q s' → BufOK a.Cb Γ' q OUT.toNat 32 :=
    fun s' Γ' q hh' => bufOK_ext ha.hord0 (MemSafe.heap_ord hh') hh'.2.2.1 hh'.2.2.2.1 hh'.2.2.2.2.1
      (bufOK_kept hord hLy hbufOUT)
  have hArr0 : ArrE a.p0 a.s0.memory A N (kept Γ) (zeroSt s).memory := by
    intro j hj
    obtain ⟨⟨a1, n1⟩, ⟨a2, n2⟩, hv⟩ := harr j hj
    exact ⟨⟨a1, n1, rfl⟩, ⟨a2, n2, rfl⟩, vInR_kept hv⟩
  have hgr0 := gr_preserved grClosed_trie bmiBody s (zeroSt s) grFree_bmi (by rw [hs.1]; exact hX) (grRel_zero s)
  have hgood : Good (evaluateHOLFiniteState (zeroSt s) bmiBody).1 := by rw [hgr0.1]; exact hg
  have hs0 : InCtx (zeroSt s) guestCtx := InCtx.of_eq hs rfl rfl rfl
  have HG := c_top ha rfl rfl rfl rfl (show capSub insCaps insCaps = true by decide) (A := A) (N := N) hOutB
    (zeroSt s) hs0
    ⟨hkv, kept Γ, p, ext_refl _, hh, scrOld_refl _, hArr0, rfl⟩ hgood
  obtain ⟨gl, he, -⟩ := hgr0.2
  have hclk : (evaluateHOLFiniteState (zeroSt s) bmiBody).2.clock = (evaluateHOLFiniteState s bmiBody).2.clock := by
    rw [he]
  have hc0 : (zeroSt s).clock = s.clock := rfl
  rw [hclk, hc0] at HG
  exact HG

end InitECandidate.Solver.Band7

#print axioms InitECandidate.Solver.Band7.bmi_condCost7
