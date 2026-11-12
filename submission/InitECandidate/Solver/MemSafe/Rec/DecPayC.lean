import InitECandidate.Solver.MemSafe.Rec.DecPayD
import InitECandidate.Solver.MemSafe.Rec.SplitTab

set_option autoImplicit false

/-!
# `decode_payload`: the split call and the adoption of the slice array (`dpC`)
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (SIn ev_rfield_w FreshFoot)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (tPL tSLA)
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

theorem rstruct_of_shape {v : ValueHOL 64}
    (h : shapeEqHOL (shapeOfHOLExact v) (.comb [.one, .one]) = true) :
    ∃ x y : BitVec 64, v = .rStruct [.val (.word x), .val (.word y)] := by
  obtain ⟨ws, hl, rfl⟩ := eq_wv_of_shape (k := 2) ((shapeEqHOL_eq_true _ _).mp h)
  match ws, hl with
  | [x, y], _ => exact ⟨x, y, rfl⟩

/-- Cells outside `Γ'` when the allocator did not move (a non-growing call). -/
theorem outside_gam {C : Cfg} {p : Ptrs} {Γ Γ' : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    (hnf : NewFresh Γ Γ' p p) {x : BitVec 64} (hx1 : p.hp ≤ x.toNat) (hx2 : x.toNat < heapEnd) :
    ¬ InObj Γ' x.toNat := by
  rintro ⟨o, ho, hlo, hhi⟩
  rcases hnf o ho x hlo hhi with ⟨o0, ho0, -, -, h1, h2⟩ | hf
  · have hl := (hL.1 o0 ho0).2.2.2.2
    unfold Obj.lo at hl h1
    unfold Obj.hi at h2
    unfold Ptrs.Ordered at hord
    generalize (C.ty o0.ty).region = r at hl
    cases r <;> simp only [Region.Live] at hl <;> unfold heapBase heapEnd scratchEnd at * <;> omega
  · unfold Fresh at hf
    unfold Ptrs.Ordered at hord
    omega

theorem wf_sla {σ : Type} {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = tSLA) :
    (Hooks.guestHooksR (σ := σ)).wf Γ s o := by
  refine Hooks.recHooks_guestR.make Γ s o (by rw [ht]; exact Hooks.recTy_tSLA) fun e he het => ?_
  have hm := Hooks.recTab_ty he
  rw [het, ht] at hm
  exact absurd hm (by decide)


/-- **The adoption of the split array**: after the call, the located array becomes a `tSLA` object. -/
theorem dp_split_post {a : Act σ} (ha : ActOK a X) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true) {Ar : BitVec 64} {nb : Nat}
    (hAr : heapBase ≤ Ar.toNat ∧ Ar.toNat + nb ≤ heapEnd) {sg' : Sig} (hsg : sg'.grows = false)
    {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} (he : Ext a.Γ0 Γ) (co : COut a sg' Γ Γ' q q' s st)
    {Pn Nn : Nat} {arr cnt : BitVec 64} (hPn : heapBase ≤ Pn) (hPN : Pn + Nn ≤ heapEnd)
    (hPq : Pn + Nn ≤ q.hp)
    (hQ : (0 < cnt.toNat → q.hp ≤ arr.toNat) ∧ arr.toNat + 16 * cnt.toNat ≤ q'.hp ∧
      cnt.toNat < 2 ^ 30 ∧ arr.toNat % 8 = 0 ∧ SIn st.memory arr cnt.toNat Pn (Pn + Nn))
    (hB : BlkF Ar nb Γ q) :
    ∃ (Γ'' : Gam) (q'' : Ptrs), Ext a.Γ0 Γ'' ∧ Heap a Γ'' q'' st ∧ BlkF Ar nb Γ'' q'' ∧
      Ext Γ' Γ'' ∧ ES Pn Nn arr cnt Γ'' q'' st.memory := by
  obtain ⟨hq1, hq2, hq3, hq4, hq5⟩ := hQ
  have hordq := heap_ord co.heap0
  have hordq' := heap_ord co.heap
  have hBq : BlkF Ar nb Γ' q' := blkF_after hordq hordq' co.mono co.nf hB
  by_cases hc0 : cnt.toNat = 0
  · exact ⟨Γ', q', ext_trans he co.ext, co.heap, hBq, Struct.ext_refl _, hPn, hPN, Or.inl hc0, hq5,
      fun h => absurd h (by omega)⟩
  have hse := heapEnd_lt64
  obtain ⟨p1, hp1, hord, hL, -⟩ := co.heap0.1
  have hqp : p1 = q := Option.some.inj (hp1.symm.trans co.heap0.2.1)
  subst hqp
  have hqle : p1.hp ≤ arr.toNat := hq1 (by omega)
  have hq'e : q'.hp ≤ heapEnd := hordq'.2.1
  have hq1b : heapBase ≤ p1.hp := hordq.1
  have hnf := co.nfp hsg
  have hF : BlkF arr (16 * cnt.toNat) Γ' q' := by
    intro x hx
    obtain ⟨hx8, hx1, hx2⟩ := hx
    refine ⟨outside_gam hordq hL hnf (by omega) (by omega), ?_⟩
    unfold Ptrs.Allocated
    left
    omega
  have hnA : ∀ x : BitVec 64, Overlap arr.toNat (16 * cnt.toNat) x → ¬ a.p0.Allocated x.toNat := by
    intro x hx
    obtain ⟨hx8, hx1, hx2⟩ := hx
    have hm := co.heap0.2.2.1
    have ho0 := ha.hord0
    unfold Ptrs.Allocated
    unfold Ptrs.Mono at hm
    unfold Ptrs.Ordered at ho0
    unfold heapBase heapEnd scratchEnd at *
    omega
  have hMono : HooksMono a.C a.H := by rw [hC, hH]; exact Hooks.guestHooksR_mono
  obtain ⟨hExt, hh2⟩ := Rec.heap_adopt ha hMono (ext_trans he co.ext) co.heap
    (Ar := arr) (n := 16 * cnt.toNat) (ty := tSLA)
    (by rw [hC]; exact Hooks.sla_heap) (by rw [hC]; exact Hooks.sla_prot)
    (by rw [hC]; exact Types.recIds_untagged tSLA (by simp)) (by omega) (by omega)
    (by
      rw [hC]
      have h1 := Types.recIds_minSz.2.2.2.2
      omega)
    ⟨by omega, by omega⟩ hq4 hF hnA hgr (fun _ => by rw [hH]; exact wf_sla rfl)
  refine ⟨_, q', hExt, hh2, ?_, Struct.ext_snoc Γ' _, hPn, hPN, Or.inr ⟨⟨arr, tSLA, 16 * cnt.toNat⟩,
    List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl, le_rfl, by omega⟩, hq5,
    fun _ => by have := hq1 (by omega); omega⟩
  intro x hx
  obtain ⟨hx8, hx1, hx2⟩ := hx
  obtain ⟨hn1, hn2⟩ := hBq x ⟨hx8, hx1, hx2⟩
  refine ⟨?_, hn2⟩
  rintro ⟨o2, ho2, h1, h2⟩
  rcases List.mem_append.mp ho2 with ho2 | ho2
  · exact hn1 ⟨o2, ho2, h1, h2⟩
  · simp only [List.mem_singleton] at ho2
    subst ho2
    have hxa := (hB x ⟨hx8, hx1, hx2⟩).2
    unfold Ptrs.Allocated at hxa
    unfold Obj.lo at h1
    unfold Ptrs.Ordered at hordq
    simp only at h1
    unfold heapBase heapEnd scratchEnd at *
    omega


/-- The locals before the split. -/
def LC (Pv Lv Ar O1 O2 O3 O4 : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word Pv)) ∧ m.lookup (nm "len") = some (.val (.word Lv)) ∧
    m.lookup (nm "pl") = some (.val (.word Ar)) ∧ m.lookup (nm "o_extra") = some (.val (.word O1)) ∧
    m.lookup (nm "o_txs") = some (.val (.word O2)) ∧ m.lookup (nm "o_wd") = some (.val (.word O3)) ∧
    m.lookup (nm "o_bal") = some (.val (.word O4))

/-- The pure facts before the split. -/
def PhiC (Pv Lv O2 O3 O4 : BitVec 64) : Prop :=
  O2.toNat ≤ O3.toNat ∧ O3.toNat ≤ Lv.toNat ∧ heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ heapEnd ∧
    O3.toNat ≤ O4.toNat ∧ O4.toNat ≤ Lv.toNat ∧ 540 ≤ Lv.toNat

theorem dp_C {a : Act σ} (ha : ActOK a X) (hX : X.code.lookup = guestCode)
    (hC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true)
    (hret : a.sg.ret = [.fits (.ptr tPL)])
    (hfail : CSumm σ X a.Cb a.H (nm "ssz_fail") sfSig [])
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False))
    (hsplit : CSumm σ X a.Cb a.H (nm "ssz_split_var_list") (svSig false) [])
    (hLoc : FreshFoot σ X (nm "ssz_split_var_list") SvPre SvQ)
    (hsfc : CSumm σ X a.Cb a.H (nm "ssz_fixed_list_count") sfcSig [])
    {Ar : BitVec 64} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 136 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {Pv Lv O1 O2 O3 O4 : BitVec 64} (hΦ : PhiC Pv Lv O2 O3 O4) (hobj : Hooks.SlObj a.Γ0 Pv Lv) :
    HoareG σ X (DI a Ar 136 (LC Pv Lv Ar O1 O2 O3 O4)
        (EKw (fun _ _ _ _ => PhiC Pv Lv O2 O3 O4) 136 Ar [(0, Pv)])) dpC
      (Node.NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  have hse := heapEnd_lt64
  have hAr := hs.2
  obtain ⟨hΦ1, hΦ2, hΦ3, hΦ4, hΦ5, hΦ6, hΦ7⟩ := hΦ
  have hpl : ∀ m, LC Pv Lv Ar O1 O2 O3 O4 m → m.lookup (nm "pl") = some (.val (.word Ar)) :=
    fun m h => h.2.2.1
  have hsE : ∀ {j : Nat} (Γ : Gam) (q : Ptrs) (m mem : Mem) (g : LocalsH),
      (∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * j) → mem y = m y) → BlkF Ar 136 Γ q →
      (fun (_ : Gam) (_ : Ptrs) (_ : Mem) (_ : LocalsH) => PhiC Pv Lv O2 O3 O4) Γ q m g →
      (fun (_ : Gam) (_ : Ptrs) (_ : Mem) (_ : LocalsH) => PhiC Pv Lv O2 O3 O4) Γ q mem g :=
    fun _ _ _ _ _ _ _ h => h
  unfold dpC
  refine hoareG_seqDI (hoareG_sFailDI ha hfail hfr (by simp [sfSig]) (by simp [sfSig])
    (by simp [sfSig])) ?_
  refine hoareG_seqDI (dp_st_keepK ha hAr (k := 16) (j := 2) (by decide) (by decide) hpl
    (fun s _ _ v hv => ev_op_word hv) (by simp) hsE) ?_
  refine hoareG_seqDI (dp_st_keepK ha hAr (k := 24) (j := 3) (by decide) (by decide) hpl
    (fun s _ _ v hv => ev_op_word hv) (by simp) hsE) ?_
  have hP2 : (Pv + O2).toNat = Pv.toNat + O2.toNat := by
    rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt (by omega)
  have hN2 : (O3 - O2).toNat = O3.toNat - O2.toNat := by
    rw [BitVec.toNat_sub]; omega
  have hx0 : ObjN a.Γ0 (Pv + O2).toNat (O3 - O2).toNat := by
    obtain ⟨x, hx, ht, h1, h2⟩ := hobj
    exact ⟨x, hx, ht, by rw [hP2]; omega, by rw [hP2, hN2]; omega⟩
  have hfee : Hooks.SlObj a.Γ0 (Pv + BitVec.ofNat 64 32) (BitVec.ofNat 64 20) := by
    obtain ⟨x, hx, ht, h1, h2⟩ := hobj
    have e : (Pv + BitVec.ofNat 64 32).toNat = Pv.toNat + 32 := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
    have e2 : (BitVec.ofNat 64 20).toNat = 20 := rfl
    exact ⟨x, hx, ht, by rw [e]; omega, by rw [e, e2]; omega⟩
  refine hoareG_decCallDI (E := EKw (fun _ _ _ _ => PhiC Pv Lv O2 O3 O4) 136 Ar [(0, Pv)])
    (L := LC Pv Lv Ar O1 O2 O3 O4)
    (L' := fun v m => ∃ x y : BitVec 64, v = .rStruct [.val (.word x), .val (.word y)] ∧
      LD Pv Lv Ar O3 O4 x y m)
    (E' := fun v Γ q m g => (∃ x y : BitVec 64, v = .rStruct [.val (.word x), .val (.word y)] ∧
      ES (Pv + O2).toNat (O3 - O2).toNat x y Γ q m) ∧ RK 136 Ar [(0, Pv)] m)
    ha hsplit hLoc (by simp [svSig]) (by simp [svSig]) (by simp [svSig]) ?_ ?_ ?_ ?_
  · intro s hs' hL vs hvs
    rw [evs_cons (ev_add2 (ev_lw hL.1) (ev_lw hL.2.2.2.2.1))
      (evs_cons (ev_sub2 (ev_lw hL.2.2.2.2.2.1) (ev_lw hL.2.2.2.2.1))
        (evs_cons (ev_cw _ 9223372036854775807) evs_nil))] at hvs
    cases hvs
    rfl
  · intro s st v hL hsh
    obtain ⟨x, y, rfl⟩ := rstruct_of_shape hsh
    obtain ⟨h1, h2, h3, h4, h5, h6, h7⟩ := hL
    refine ⟨x, y, rfl, ?_, ?_, ?_, ?_, ?_, lk_set_self _ _ _⟩ <;>
      rw [lk_set_ne _ _ (by decide)] <;> assumption
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co hsh
    obtain ⟨x, y, rfl⟩ := rstruct_of_shape hsh
    rw [evs_cons (ev_add2 (ev_lw hL.1) (ev_lw hL.2.2.2.2.1))
      (evs_cons (ev_sub2 (ev_lw hL.2.2.2.2.2.1) (ev_lw hL.2.2.2.2.1))
        (evs_cons (ev_cw _ 9223372036854775807) evs_nil))] at hvs
    cases hvs
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := hh.2.1
    obtain ⟨p', hp', hord', hmo, -, hQ⟩ := hLc _ rfl q hpe (heap_ord hh)
      ⟨Pv + O2, O3 - O2, BitVec.ofNat 64 9223372036854775807, rfl, by
        rw [hP2, hN2]; omega⟩
    have hp'q : p' = q' := Option.some.inj (hp'.symm.trans co.heap.2.1)
    subst hp'q
    obtain ⟨hq1, hq2, hq3, hq4, hq5⟩ := hQ x y rfl
    obtain ⟨-, -, hSI⟩ := hq5 (Pv + O2) (O3 - O2) _ rfl
    obtain ⟨p1, hp1, -, hLay, -⟩ := hh.1
    have hqp : p1 = q := Option.some.inj (hp1.symm.trans hh.2.1)
    subst hqp
    have hPq := objN_below (hC ▸ hLay) (objN_ext he hx0)
    obtain ⟨Γ'', q'', he'', hh'', hB'', -, hES⟩ := dp_split_post ha hC hH hgr hs (sg' := svSig false) rfl he co
      (Pn := (Pv + O2).toNat) (Nn := (O3 - O2).toNat) (arr := x) (cnt := y)
      (by omega) (by rw [hP2, hN2]; omega) hPq ⟨hq1, hq2, hq3, hq4, hSI⟩ hB
    exact ⟨Γ'', q'', he'', hh'', hB'', ⟨x, y, rfl, hES⟩, rk_call co hAr hA8 hB hE.2⟩
  · intro v s hs' hP hg
    obtain ⟨⟨x, y, hv, hLD⟩, Γ, q, he, hh, hB, hn, ⟨x', y', hv', hES⟩, hR⟩ := hP
    rw [hv] at hv'
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq, and_true] at hv'
    obtain ⟨rfl, rfl⟩ := hv'
    exact dp_D ha hX hC hCb hH hgr hret hsfc hs hA8 hx0 hobj hfee hΦ4 hΦ5 hΦ6 s hs'
      ⟨hLD, Γ, q, he, hh, hB, hn, hES, hR⟩ hg


theorem dp_C' {a : Act σ} (ha : ActOK a X) (hX : X.code.lookup = guestCode)
    (hC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true)
    (hret : a.sg.ret = [.fits (.ptr tPL)])
    (hfail : CSumm σ X a.Cb a.H (nm "ssz_fail") sfSig [])
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False))
    (hsplit : CSumm σ X a.Cb a.H (nm "ssz_split_var_list") (svSig false) [])
    (hLoc : FreshFoot σ X (nm "ssz_split_var_list") SvPre SvQ)
    (hsfc : CSumm σ X a.Cb a.H (nm "ssz_fixed_list_count") sfcSig [])
    {Ar : BitVec 64} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 136 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {Pv Lv O1 O2 O3 O4 : BitVec 64} (hobj : Hooks.SlObj a.Γ0 Pv Lv) :
    HoareG σ X (DI a Ar 136 (LC Pv Lv Ar O1 O2 O3 O4)
        (EKw (fun _ _ _ _ => PhiC Pv Lv O2 O3 O4) 136 Ar [(0, Pv)])) dpC
      (Node.NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  intro s hs' hP hg
  obtain ⟨hL, Γ, q, he, hh, hB, hn, hΦ, hR⟩ := hP
  exact dp_C ha hX hC hCb hH hgr hret hfail hfr hsplit hLoc hsfc hs hA8 hΦ hobj s hs'
    ⟨hL, Γ, q, he, hh, hB, hn, hΦ, hR⟩ hg

end InitECandidate.Solver.MemSafe.Rec
