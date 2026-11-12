import InitECandidate.Solver.MemSafe.Trie.CsrTail
import InitECandidate.Solver.MemSafe.Trie.HtabNewScr

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: from the entry to the loops
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- All the names declared below the entry. -/
def nsAll : List MlS := nm "i" :: nm "state_mpt" :: nm "acap" :: (nsA ++ nsB ++ nsC)

set_option maxHeartbeats 0 in
theorem stage_i {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND OUT : BitVec 64}
    (hnd : (nm "nodedb", ValueHOL.val (.word ND)) ∈ B) (hsw : (nm "sw", ValueHOL.val (.word SW)) ∈ B)
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B) (haw : (nm "aw", ValueHOL.val (.word AW)) ∈ B)
    (hnr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ B)
    (hout : (nm "out", ValueHOL.val (.word OUT)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nsAll, p.1 ≠ w)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ q mm, Rv Γ q mm (.val (.word (BitVec.ofNat 64 0)))) :
    HoareG σ guestCtx (GI a (LV B) (IB a (fun _ => True) C NR SW AW ND)) csr_i_1
      (GP a (fun _ => False) (fun _ _ _ => True) Rv) := by
  unfold csr_i_1
  refine gp_dec ha.hH (L1 := LV ((nm "i", ValueHOL.val (.word (BitVec.ofNat 64 0))) :: B))
    (L2 := fun _ => False) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hL v hv
    rw [ev_cw] at hv
    cases hv
    exact lv_cons (lv_set hL (fun p hp => hfr p hp (nm "i") (by simp [nsAll])) _) (by simp [setVarHOLFinite, FUPDATE])
  · refine gp_seq (L := fun m => ∃ I : BitVec 64, LV ((nm "i", ValueHOL.val (.word I)) :: B) m)
      (E := IB a (fun _ => True) C NR SW AW ND) ?_ ?_
    · refine hoareG_pre (P := GI a (fun m => ∃ I : BitVec 64, LV ((nm "i", ValueHOL.val (.word I)) :: B) m)
        (IB a (fun _ => True) C NR SW AW ND)) (gp_while ha.hH ?_ (fun s _ h _ => h))
        (fun s _ ⟨hL, rest⟩ => ⟨⟨_, hL⟩, rest⟩)
      refine hoareG_pre (stage_item ha haC hCb haH hgr hcI hcH hcC hsw hcache hnd hnr
        (fun p hp w hw => hfr p hp w (by simp only [nsAll, List.mem_cons, List.mem_append] at hw ⊢; tauto)))
        (fun s _ h => h.1)
    · exact stage_state ha haC hCb haH hgr hcI hcC hnd hsw hcache haw hout
        (fun p hp w hw => hfr p hp w (by simp only [nsAll, List.mem_cons, List.mem_append] at hw ⊢; tauto))
        hOutB hOutF hRv

set_option maxHeartbeats 0 in
theorem stage_cap {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND OUT : BitVec 64}
    (hnd : (nm "nodedb", ValueHOL.val (.word ND)) ∈ B) (hsw : (nm "sw", ValueHOL.val (.word SW)) ∈ B)
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B) (haw : (nm "aw", ValueHOL.val (.word AW)) ∈ B)
    (hnr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ B)
    (hout : (nm "out", ValueHOL.val (.word OUT)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "cap" :: nsAll, p.1 ≠ w)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ q mm, Rv Γ q mm (.val (.word (BitVec.ofNat 64 0)))) :
    HoareG σ guestCtx (GI a (LV B) (IB a (fun _ => True) C NR SW AW ND)) csr_cap_1
      (GP a (fun _ => False) (fun _ _ _ => True) Rv) := by
  unfold csr_cap_1
  refine gp_dec ha.hH (L1 := fun m => ∃ CP : BitVec 64, LV ((nm "cap", ValueHOL.val (.word CP)) :: B) m)
    (L2 := fun _ => False) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hL v hv
    have hv' := HtabEntries.ld_w (ev_add2 (lv_ev hL hsw) (ev_cw s 24)) hv
    subst hv'
    exact ⟨_, lv_cons (lv_set hL (fun p hp => hfr p hp _ (by simp)) _)
      (v := .val (.word (rd s.memory (SW + BitVec.ofNat 64 24)))) (by simp [setVarHOLFinite, FUPDATE])⟩
  · refine hoareG_exL fun CP => ?_
    exact stage_i ha haC hCb haH hgr hcI hcH hcC (List.mem_cons_of_mem _ hnd) (List.mem_cons_of_mem _ hsw)
      (List.mem_cons_of_mem _ hcache) (List.mem_cons_of_mem _ haw) (List.mem_cons_of_mem _ hnr)
      (List.mem_cons_of_mem _ hout)
      (fresh_cons (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide)) hOutB hOutF hRv

set_option maxHeartbeats 0 in
theorem stage_nodedb {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW OUT : BitVec 64}
    (hsw : (nm "sw", ValueHOL.val (.word SW)) ∈ B)
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B) (haw : (nm "aw", ValueHOL.val (.word AW)) ∈ B)
    (hnr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ B)
    (hout : (nm "out", ValueHOL.val (.word OUT)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "nodedb" :: nm "cap" :: nsAll, p.1 ≠ w)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ q mm, Rv Γ q mm (.val (.word (BitVec.ofNat 64 0)))) :
    HoareG σ guestCtx (GI a (LV B) (fun Γ _ _ => TB C NR SW AW Γ)) csr_nodedb_1
      (GP a (fun _ => False) (fun _ _ _ => True) Rv) := by
  unfold csr_nodedb_1
  refine gp_decG ha.hH (L1 := fun v m => ∃ ND : BitVec 64, v = .val (.word ND) ∧
      LV ((nm "nodedb", v) :: B) m)
    (E1 := fun v Γ q mm => ∀ ND : BitVec 64, v = .val (.word ND) →
      IB a (fun _ => True) C NR SW AW ND Γ q mm)
    (L2 := fun _ => False) (E2 := fun _ _ _ => True) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE v hv
    obtain ⟨o, ho, hot, rfl⟩ := glob_slot haC haH hh hs Types.gt_ws (k := 0) (by norm_num) hv
    refine ⟨⟨_, rfl, lv_cons (lv_set hL (fun p hp => hfr p hp _ (by simp)) _) (by simp [setVarHOLFinite, FUPDATE])⟩,
      fun ND hND => ⟨hE, ⟨o, ho, hot, ?_⟩, trivial⟩⟩
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hND
    rw [← hND]
    simp
  · intro v
    by_cases hw : ∃ ND : BitVec 64, v = .val (.word ND)
    swap
    · exact hoareG_false fun s _ h => hw (by obtain ⟨ND, hND, -⟩ := h.1; exact ⟨ND, hND⟩)
    obtain ⟨ND, rfl⟩ := hw
    refine hoareG_pre (P := GI a (LV ((nm "nodedb", ValueHOL.val (.word ND)) :: B))
      (IB a (fun _ => True) C NR SW AW ND)) ?_
      (fun s _ ⟨⟨ND', hND', hL⟩, Γ, q, he, hh, hsc, hE⟩ => by
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hND'
        subst hND'
        exact ⟨hL, Γ, q, he, hh, hsc, hE ND rfl⟩)
    exact stage_cap ha haC hCb haH hgr hcI hcH hcC (List.mem_cons_self ..) (List.mem_cons_of_mem _ hsw)
      (List.mem_cons_of_mem _ hcache) (List.mem_cons_of_mem _ haw) (List.mem_cons_of_mem _ hnr)
      (List.mem_cons_of_mem _ hout)
      (fresh_cons (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide)) hOutB hOutF hRv

set_option maxHeartbeats 0 in
theorem stage_aw {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW OUT : BitVec 64}
    (hsw : (nm "sw", ValueHOL.val (.word SW)) ∈ B)
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B)
    (hnr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ B)
    (hout : (nm "out", ValueHOL.val (.word OUT)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "aw" :: nm "nodedb" :: nm "cap" :: nsAll, p.1 ≠ w)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ q mm, Rv Γ q mm (.val (.word (BitVec.ofNat 64 0)))) :
    HoareG σ guestCtx (GI a (LV B) (fun Γ _ _ => Fits Γ (.ptr Types.tHTb20) C ∧ Fits Γ (.ptr Types.tHTh20) NR ∧
        Fits Γ (.ptr Types.tHTbt20) SW)) csr_aw_1 (GP a (fun _ => False) (fun _ _ _ => True) Rv) := by
  unfold csr_aw_1
  refine gp_decG ha.hH (L1 := fun v m => ∃ AW : BitVec 64, v = .val (.word AW) ∧ LV ((nm "aw", v) :: B) m)
    (E1 := fun v Γ q mm => ∀ AW : BitVec 64, v = .val (.word AW) → TB C NR SW AW Γ)
    (L2 := fun _ => False) (E2 := fun _ _ _ => True) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE v hv
    obtain ⟨W, rfl, hf⟩ := glob_slot_fits haC haH hh hs Types.gt_bs (j := 2) (by norm_num) (by decide)
      (by decide) hv
    have e : (Types.guestC.ty Types.tBS).slot 2 = .ptr Types.tHTb20 := by decide
    rw [e] at hf
    refine ⟨⟨_, rfl, lv_cons (lv_set hL (fun p hp => hfr p hp _ (by simp)) _) (by simp [setVarHOLFinite, FUPDATE])⟩,
      fun AW hAW => ?_⟩
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hAW
    subst hAW
    exact ⟨hE.1, hE.2.1, hE.2.2, hf⟩
  · intro v
    by_cases hw : ∃ AW : BitVec 64, v = .val (.word AW)
    swap
    · exact hoareG_false fun s _ h => hw (by obtain ⟨AW, hAW, -⟩ := h.1; exact ⟨AW, hAW⟩)
    obtain ⟨AW, rfl⟩ := hw
    refine hoareG_pre (P := GI a (LV ((nm "aw", ValueHOL.val (.word AW)) :: B)) (fun Γ _ _ => TB C NR SW AW Γ)) ?_
      (fun s _ ⟨⟨AW', hAW', hL⟩, Γ, q, he, hh, hsc, hE⟩ => by
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hAW'
        subst hAW'
        exact ⟨hL, Γ, q, he, hh, hsc, hE AW rfl⟩)
    exact stage_nodedb ha haC hCb haH hgr hcI hcH hcC (List.mem_cons_of_mem _ hsw)
      (List.mem_cons_of_mem _ hcache) (List.mem_cons_self ..) (List.mem_cons_of_mem _ hnr)
      (List.mem_cons_of_mem _ hout)
      (fresh_cons (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide)) hOutB hOutF hRv

set_option maxHeartbeats 0 in
theorem stage_sw {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR OUT : BitVec 64}
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B)
    (hnr : (nm "new_roots", ValueHOL.val (.word NR)) ∈ B)
    (hout : (nm "out", ValueHOL.val (.word OUT)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "sw" :: nm "aw" :: nm "nodedb" :: nm "cap" :: nsAll, p.1 ≠ w)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ q mm, Rv Γ q mm (.val (.word (BitVec.ofNat 64 0)))) :
    HoareG σ guestCtx (GI a (LV B) (fun Γ _ _ => Fits Γ (.ptr Types.tHTb20) C ∧ Fits Γ (.ptr Types.tHTh20) NR))
      csr_sw_1 (GP a (fun _ => False) (fun _ _ _ => True) Rv) := by
  unfold csr_sw_1
  refine gp_decG ha.hH (L1 := fun v m => ∃ SW : BitVec 64, v = .val (.word SW) ∧ LV ((nm "sw", v) :: B) m)
    (E1 := fun v Γ q mm => ∀ SW : BitVec 64, v = .val (.word SW) →
      Fits Γ (.ptr Types.tHTb20) C ∧ Fits Γ (.ptr Types.tHTh20) NR ∧ Fits Γ (.ptr Types.tHTbt20) SW)
    (L2 := fun _ => False) (E2 := fun _ _ _ => True) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE v hv
    obtain ⟨W, rfl, hf⟩ := glob_slot_fits haC haH hh hs Types.gt_bs (j := 4) (by norm_num) (by decide)
      (by decide) hv
    have e : (Types.guestC.ty Types.tBS).slot 4 = .ptr Types.tHTbt20 := by decide
    rw [e] at hf
    refine ⟨⟨_, rfl, lv_cons (lv_set hL (fun p hp => hfr p hp _ (by simp)) _) (by simp [setVarHOLFinite, FUPDATE])⟩,
      fun SW hSW => ?_⟩
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hSW
    subst hSW
    exact ⟨hE.1, hE.2, hf⟩
  · intro v
    by_cases hw : ∃ SW : BitVec 64, v = .val (.word SW)
    swap
    · exact hoareG_false fun s _ h => hw (by obtain ⟨SW, hSW, -⟩ := h.1; exact ⟨SW, hSW⟩)
    obtain ⟨SW, rfl⟩ := hw
    refine hoareG_pre (P := GI a (LV ((nm "sw", ValueHOL.val (.word SW)) :: B)) (fun Γ _ _ =>
        Fits Γ (.ptr Types.tHTb20) C ∧ Fits Γ (.ptr Types.tHTh20) NR ∧ Fits Γ (.ptr Types.tHTbt20) SW)) ?_
      (fun s _ ⟨⟨SW', hSW', hL⟩, Γ, q, he, hh, hsc, hE⟩ => by
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hSW'
        subst hSW'
        exact ⟨hL, Γ, q, he, hh, hsc, hE SW rfl⟩)
    exact stage_aw ha haC hCb haH hgr hcI hcH hcC (List.mem_cons_self ..) (List.mem_cons_of_mem _ hcache)
      (List.mem_cons_of_mem _ hnr) (List.mem_cons_of_mem _ hout)
      (fresh_cons (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide)) hOutB hOutF hRv

set_option maxHeartbeats 0 in
theorem stage_nr0 {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C OUT : BitVec 64}
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B)
    (hout : (nm "out", ValueHOL.val (.word OUT)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "new_roots" :: nm "sw" :: nm "aw" :: nm "nodedb" :: nm "cap" :: nsAll, p.1 ≠ w)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ q mm, Rv Γ q mm (.val (.word (BitVec.ofNat 64 0)))) :
    HoareG σ guestCtx (GI a (LV B) (fun Γ _ _ => Fits Γ (.ptr Types.tHTb20) C)) csr_new_roots_1
      (GP a (fun _ => False) (fun _ _ _ => True) Rv) := by
  unfold csr_new_roots_1
  have hf : SumSpecA σ guestCtx a.Cb a.H (nm "htab_new") ⟨[.eq 20, .eq 64], [.fits (.ptr Types.tHTh20)], [], true⟩
      (fun _ s Γ => ReqOK [] s Γ) (fun _ s Γ x => CapPW [] s Γ x)
      (fun _ _ Γ _ _ Γ' => ∀ o ∈ Γ', (Types.guestC.ty o.ty).region = .scratch →
        ∃ o0 ∈ Γ, o0.base = o.base ∧ o0.ty = o.ty) := by
    rw [hCb, haH]; exact Shards.sa_htab_new_20_64
  refine gp_decCallX ha (cs := []) (capSub_nil _) hf (funSpec_true _) (fun g hg => by simp at hg)
    (fun _ => hgr)
    (L1 := fun v m => ∃ NR : BitVec 64, v = .val (.word NR) ∧ LV ((nm "new_roots", v) :: B) m)
    (E1 := fun v Γ q mm => ∀ NR : BitVec 64, v = .val (.word NR) →
      Fits Γ (.ptr Types.tHTb20) C ∧ Fits Γ (.ptr Types.tHTh20) NR)
    (L2 := fun _ => False) (E2 := fun _ _ _ => True) ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE vs hvs
    have hev : evs s [cw 20, cw 64] = some [.val (.word (BitVec.ofNat 64 20)), .val (.word (BitVec.ofNat 64 64))] :=
      evs_cons (ev_cw s 20) (evs_cons (ev_cw s 64) evs_nil)
    rw [hev] at hvs
    cases hvs
    refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun x hx => (argCells_nb (by decide) hx).elim,
      fun callee => fun c hc => by cases hc⟩
    rcases i with _ | _ | i <;> simp at hpt hv <;> subst hpt <;> subst hv <;> rfl
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    refine ⟨hQ, fun v hv hsh NR hNR => ⟨fits_ext hext hE, ?_⟩⟩
    have := hret v hv 0 (.fits (.ptr Types.tHTh20)) NR rfl (by rw [hNR]; exact HtabEntries.flatten_word NR ▸ rfl)
    exact this
  · intro s st v hL hsh
    obtain ⟨NR, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨NR, rfl, lv_cons (lv_set hL (fun p hp => hfr p hp _ (by simp)) _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · intro v
    by_cases hw : ∃ NR : BitVec 64, v = .val (.word NR)
    swap
    · exact hoareG_false fun s _ h => hw (by obtain ⟨NR, hNR, -⟩ := h.1; exact ⟨NR, hNR⟩)
    obtain ⟨NR, rfl⟩ := hw
    refine hoareG_pre (P := GI a (LV ((nm "new_roots", ValueHOL.val (.word NR)) :: B)) (fun Γ _ _ =>
        Fits Γ (.ptr Types.tHTb20) C ∧ Fits Γ (.ptr Types.tHTh20) NR)) ?_
      (fun s _ ⟨⟨NR', hNR', hL⟩, Γ, q, he, hh, hsc, hE⟩ => by
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hNR'
        subst hNR'
        exact ⟨hL, Γ, q, he, hh, hsc, hE NR rfl⟩)
    exact stage_sw ha haC hCb haH hgr hcI hcH hcC (List.mem_cons_of_mem _ hcache) (List.mem_cons_self ..)
      (List.mem_cons_of_mem _ hout)
      (fresh_cons (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide)) hOutB hOutF hRv

set_option maxHeartbeats 0 in
theorem stage_cache0 {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT Types.tHTh20) a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {OUT : BitVec 64}
    (hout : (nm "out", ValueHOL.val (.word OUT)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "cache" :: nm "new_roots" :: nm "sw" :: nm "aw" :: nm "nodedb" :: nm "cap" :: nsAll,
      p.1 ≠ w)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ q mm, Rv Γ q mm (.val (.word (BitVec.ofNat 64 0)))) :
    HoareG σ guestCtx (GI a (LV B) (fun _ _ _ => True)) csr_cache_1
      (GP a (fun _ => False) (fun _ _ _ => True) Rv) := by
  unfold csr_cache_1
  have hf : SumSpecA σ guestCtx a.Cb a.H (nm "htab_copy") (htcSig Types.tHTb20) (fun _ _ _ => True)
      (fun _ s Γ x => CapPW [] s Γ x)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → True) := by
    rw [hCb, haH]
    exact sumSpecA_mono (sumSpecA_htab_copy (σ := σ) (th := Types.tHTb20) (by decide) (by decide))
      (fun _ _ _ h => h) (fun _ _ _ _ h => h.elim) (fun _ _ _ _ _ _ h => h)
  refine gp_decCallX ha (cs := []) (capSub_nil _) hf (funSpec_true _) (by simp [htcSig]) (fun _ => hgr)
    (L1 := fun v m => ∃ C : BitVec 64, v = .val (.word C) ∧ LV ((nm "cache", v) :: B) m)
    (E1 := fun v Γ q mm => ∀ C : BitVec 64, v = .val (.word C) → Fits Γ (.ptr Types.tHTb20) C)
    (L2 := fun _ => False) (E2 := fun _ _ _ => True) ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE vs hvs
    obtain ⟨v0, vs1, rfl, h0, h1⟩ := evs_cons_inv hvs
    have := evs_nil_eq h1
    subst this
    obtain ⟨W, rfl, hf⟩ := glob_slot_fits haC haH hh hs Types.gt_bs (j := 9) (by norm_num) (by decide)
      (by decide) h0
    have e : (Types.guestC.ty Types.tBS).slot 9 = .ptr Types.tHTb20 := by decide
    rw [e] at hf
    refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun x hx => (argCells_nb (by decide) hx).elim, fun _ => trivial⟩
    rcases i with _ | i
    · simp [htcSig] at hpt hv
      subst hpt
      subst hv
      exact ⟨W, rfl, hf⟩
    · simp [htcSig] at hpt
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    refine ⟨hQ.1, fun v hv hsh C hC => ?_⟩
    have := hret v hv 0 (.fits (.ptr Types.tHTb20)) C (by simp [htcSig]) (by rw [hC]; exact HtabEntries.flatten_word C ▸ rfl)
    exact this
  · intro s st v hL hsh
    obtain ⟨C, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨C, rfl, lv_cons (lv_set hL (fun p hp => hfr p hp _ (by simp)) _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · intro v
    by_cases hw : ∃ C : BitVec 64, v = .val (.word C)
    swap
    · exact hoareG_false fun s _ h => hw (by obtain ⟨C, hC, -⟩ := h.1; exact ⟨C, hC⟩)
    obtain ⟨C, rfl⟩ := hw
    refine hoareG_pre (P := GI a (LV ((nm "cache", ValueHOL.val (.word C)) :: B)) (fun Γ _ _ =>
        Fits Γ (.ptr Types.tHTb20) C)) ?_
      (fun s _ ⟨⟨C', hC', hL⟩, Γ, q, he, hh, hsc, hE⟩ => by
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hC'
        subst hC'
        exact ⟨hL, Γ, q, he, hh, hsc, hE C rfl⟩)
    exact stage_nr0 ha haC hCb haH hgr hcI hcH hcC (List.mem_cons_self ..) (List.mem_cons_of_mem _ hout)
      (fresh_cons (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide)) hOutB hOutF hRv

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.stage_cache0
