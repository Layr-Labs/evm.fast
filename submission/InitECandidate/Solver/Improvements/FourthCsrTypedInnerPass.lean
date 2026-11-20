import InitECandidate.Solver.Improvements.FourthCsrCallerCommon
import InitECandidate.Solver.Band7.CsrInner
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthCsrCaller
open InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie
variable {σ : Type}

/-! Keep the accepted generic-K memory theorem and reprove only its clock
component, deriving the captured count from the actual typed table/load. -/
theorem cstage_pass_typed {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M VB INN : BitVec 64}
    (hFit : ∀ Γ, K Γ → FourthCsrInnerLink.InnerFits INN Γ)
    (hinn : (nm "inner", .val (.word INN)) ∈ B)
    (hvb : (nm "vbuf", .val (.word VB)) ∈ B) (hmpt : (nm "mpt", .val (.word M)) ∈ B)
    (hfr : ∀ p ∈ B, p.1 ≠ nm "pass" ∧ p.1 ≠ nm "j" ∧ p.1 ≠ nm "icount" ∧ p.1 ≠ nm "e" ∧ p.1 ≠ nm "v" ∧
      p.1 ≠ nm "z" ∧ p.1 ≠ nm "n" ∧ p.1 ≠ nm "w" ∧ p.1 ≠ nm "enc")
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a (fun m => ∃ P : BitVec 64, LV ((nm "pass", .val (.word P)) :: B) m)
        (IA a K C NR SW AW ND M VB)) csr_j_1
      (GP a (fun m => ∃ P : BitVec 64, LV ((nm "pass", .val (.word P)) :: B) m)
        (IA a K C NR SW AW ND M VB) Rv) (cb csr_j_1) := by
  refine ⟨(InitECandidate.Solver.MemSafe.Trie.cstage_pass
    ha haC hCb haH hgr hcI hK (Rv := Rv) hinn hvb hmpt hfr).1, ?_⟩
  unfold csr_j_1
  refine Inv.costP_dec (fun s hs hp v hv hsh => ?_)
  rw [ev_cw] at hv
  cases hv
  obtain ⟨⟨P, hL⟩, Γ0, q0, he0, hh0, hsc0, hE0⟩ := hp
  let kvp : List (MlS × ValueHOL 64) := (nm "pass", .val (.word P)) :: B
  have hfrp : ∀ p ∈ kvp, p.1 ≠ nm "j" ∧ p.1 ≠ nm "icount" ∧ p.1 ≠ nm "e" ∧ p.1 ≠ nm "v" ∧
      p.1 ≠ nm "z" ∧ p.1 ≠ nm "n" ∧ p.1 ≠ nm "w" ∧ p.1 ≠ nm "enc" := by
    intro p hp
    rcases List.mem_cons.mp hp with rfl | hp
    · refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> (dsimp only; decide)
    · exact (hfr p hp).2
  have hj0 : LV ((nm "j", .val (.word (0 : BitVec 64))) :: kvp)
      (setVarHOLFinite (nm "j") (.val (.word (0 : BitVec 64))) s).locals :=
    lv_cons (lv_set hL (fun p hp => (hfrp p hp).1) _)
      (by simp [setVarHOLFinite, FUPDATE])
  have hloadCost : Inv.CostP σ guestCtx
      (GI a (LV ((nm "j", .val (.word (0 : BitVec 64))) :: kvp))
        (IA a K C NR SW AW ND M VB)) csr_icount_1 (cb csr_j_1) := by
    unfold csr_icount_1
    refine Inv.costP_dec (fun s1 hs1 hp1 v hv hsh => ?_)
    obtain ⟨hL1, Γ1, q1, he1, hh1, hsc1, hE1⟩ := hp1
    have hi : (nm "inner", .val (.word INN)) ∈ (nm "j", .val (.word (0 : BitVec 64))) :: kvp :=
      List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hinn)
    let N : BitVec 64 := rd s1.memory (INN + BitVec.ofNat 64 24)
    have hvN : v = .val (.word N) :=
      HtabEntries.ld_w (ev_add2 (lv_ev hL1 hi) (ev_cw s1 24)) hv
    subst v
    have hN : N.toNat ≤ capMax :=
      FourthCsrInnerLink.inner_count_of_heap htabHooks_guestR haC haH hh1 (hFit Γ1 hE1.2.2.2.2.2)
    let kvI : List (MlS × ValueHOL 64) := (nm "icount", .val (.word N)) :: kvp
    have hfrI : ∀ p ∈ kvI, p.1 ≠ nm "j" ∧ p.1 ≠ nm "e" ∧ p.1 ≠ nm "v" ∧ p.1 ≠ nm "z" ∧
        p.1 ≠ nm "n" ∧ p.1 ≠ nm "w" ∧ p.1 ≠ nm "enc" := by
      intro p hp
      rcases List.mem_cons.mp hp with rfl | hp
      · refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> (dsimp only; decide)
      · exact ⟨(hfrp p hp).1, (hfrp p hp).2.2.1, (hfrp p hp).2.2.2.1,
          (hfrp p hp).2.2.2.2.1, (hfrp p hp).2.2.2.2.2.1,
          (hfrp p hp).2.2.2.2.2.2.1, (hfrp p hp).2.2.2.2.2.2.2⟩
    let L : LocalsH → Prop := fun m => ∃ J : BitVec 64, LV ((nm "j", .val (.word J)) :: kvI) m
    let E : Gam → Ptrs → Mem → Prop := IA a K C NR SW AW ND M VB
    have hb : CH σ (fun s => GI a L E s ∧
          CondTrue s (.cmp .less (lv (nm "j")) (lv (nm "icount")))) csr_e_1
        (GP a L E Rv) (InitECandidate.Solver.Band7.cb csr_e_1) :=
      ch_pre (cstage_e ha haC hCb haH hgr hcI hK
        (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hinn))
        (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hvb))
        (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hmpt)) hfrI)
        (fun s _ h => h.1)
    have hw := FourthCsrExactCH.gc_while_bounded_exact ha.hH
      (i := nm "j") (E0 := lv (nm "icount")) (M := capMax) (by decide)
      hb (fun s hs h _ => h) (noContB_sound _ (by decide_cbv))
      (stepsB_sound (nm "j") true _ (by decide_cbv))
      (fun s hs ⟨⟨J, hl⟩, rest⟩ =>
        ⟨N, lv_ev hl (List.mem_cons_of_mem _ (List.mem_cons_self ..)), hN⟩)
    have hseq := Inv.costP_seq (R := fun _ => True) hw.2
      (fun s hs hp ht hr => trivial) (Inv.costP_of_cost (cost_assign .local (nm "pass") (.op .add [lv (nm "pass"), cw 1])))
    apply hseq.pre
    intro t ht heq
    subst t
    have hcapFresh : ∀ p ∈ (nm "j", .val (.word (0 : BitVec 64))) :: kvp,
        p.1 ≠ nm "icount" := by
      intro p hp
      rcases List.mem_cons.mp hp with rfl | hp
      · dsimp only; decide
      · exact (hfrp p hp).2.1
    have hcap := lv_cons (lv_set hL1 hcapFresh (.val (.word N)))
      (x := nm "icount") (v := .val (.word N)) (by simp [setVarHOLFinite, FUPDATE])
    have hperm : LV ((nm "j", .val (.word (0 : BitVec 64))) :: kvI)
        (setVarHOLFinite (nm "icount") (.val (.word N)) s1).locals :=
      lv_perm hcap (fun p hp => by simp only [kvI, List.mem_cons] at hp ⊢; tauto)
    exact ⟨⟨⟨0, hperm⟩, Γ1, q1, he1,
      heap_congr (s := s1) ha.hH rfl rfl rfl rfl hh1, hsc1, hE1⟩,
      0, hperm _ (List.mem_cons_self ..), by decide⟩
  exact hloadCost.pre (fun t ht heq => by
    subst t
    exact ⟨hj0, Γ0, q0, he0, heap_congr (s := s) ha.hH rfl rfl rfl rfl hh0, hsc0, hE0⟩)

#print axioms cstage_pass_typed
end FourthCsrCaller
