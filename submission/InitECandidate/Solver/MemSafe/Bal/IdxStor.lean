import InitECandidate.Solver.MemSafe.Bal.IdxStorCode

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

theorem sub_widen {cs0 cs1 cs : List Cap}
    (h : ∀ c ∈ cs, c.ks = [] ∧ ∃ c0 ∈ cs0, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t)
    (hs : ∀ c ∈ cs0, c ∈ cs1) :
    ∀ c ∈ cs, c.ks = [] ∧ ∃ c0 ∈ cs1, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t :=
  fun c hc => let ⟨a, c0, h0, h1, h2⟩ := h c hc; ⟨a, c0, hs _ h0, h1, h2⟩

def isc : List Cap := gsc ++ capsHT tHTh60

theorem isc_gsc : ∀ c ∈ gsc, c ∈ isc := fun c hc => List.mem_append_left _ hc

theorem isc_sub_b20 : ∀ c ∈ capsHT tHTb20, c.ks = [] ∧ ∃ c0 ∈ isc, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t :=
  sub_widen gsc_sub1 isc_gsc
theorem isc_sub_wst : ∀ c ∈ storWstCaps, c.ks = [] ∧ ∃ c0 ∈ isc, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t :=
  sub_widen gsc_sub2 isc_gsc
theorem isc_sub_h60 : ∀ c ∈ capsHT tHTh60, c.ks = [] ∧ ∃ c0 ∈ isc, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t := by
  intro c hc
  refine ⟨(capsHT_self c hc).1, c, List.mem_append_right _ hc, ?_, fun _ h => h⟩
  simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
  rcases hc with rfl | rfl <;> rfl
theorem isc_sub_gsc : ∀ c ∈ gsc, c.ks = [] ∧ ∃ c0 ∈ isc, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t := by
  intro c hc
  unfold gsc at hc
  rcases List.mem_append.mp hc with h | h
  · exact isc_sub_b20 c h
  · exact isc_sub_wst c h

structure IsEnt (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (ADDR KB TB : BitVec 64) : Prop where
  hord : p0.Ordered
  hL : Layout guestC p0 Γ0
  K0 : ∃ K ∈ Γ0, K.base = KB ∧ K.ty = tB64
  gk : s0.globals.lookup (nm "bal_key_buf") = some (.val (.word KB))
  T0 : ∃ T ∈ Γ0, T.base = TB ∧ T.ty = tHTh60
  gt : s0.globals.lookup (nm "bal_idx_stor") = some (.val (.word TB))
  B0 : BsNN s0 Γ0
  key : SrcKey Γ0 ADDR 20 tHTb20

structure IsF (Γ : Gam) (t : State σ) (ADDR KB TB : BitVec 64) : Prop where
  K : ∃ K ∈ Γ, K.base = KB ∧ K.ty = tB64 ∧ 64 ≤ K.size
  T : ∃ T ∈ Γ, T.base = TB ∧ T.ty = tHTh60
  B : BsNN t Γ
  key : SrcKey Γ ADDR 20 tHTb20
  gt : t.globals.lookup (nm "bal_idx_stor") = some (.val (.word TB))

section is
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {ADDR KEY KB TB : BitVec 64}

theorem is_facts (E : IsEnt Γ0 s0 p0 ADDR KB TB) {Γ : Gam} {t : State σ} (h : IV isc Γ0 s0 p0 Γ t) :
    IsF Γ t ADDR KB TB := by
  have hext := Struct.trk_ext h.1
  obtain ⟨q, hq, hord, hL, -⟩ := Struct.trk_G h.1
  have g4 : ∀ g ∈ bal4, t.globals.lookup g = s0.globals.lookup g := h.2
  obtain ⟨K0, hK0, hK0b, hK0t⟩ := E.K0
  obtain ⟨K, hK, hKb, hKt, hKs⟩ := hext K0 hK0
  obtain ⟨T0, hT0, hT0b, hT0t⟩ := E.T0
  obtain ⟨T, hT, hTb, hTt, -⟩ := hext T0 hT0
  obtain ⟨B0, hB0, hB0t, hB0g⟩ := E.B0
  obtain ⟨B, hB, hBb, hBt, -⟩ := hext B0 hB0
  refine ⟨⟨K, hK, hKb.trans hK0b, hKt.trans hK0t, ?_⟩, ⟨T, hT, hTb.trans hT0b, hTt.trans hT0t⟩,
    ⟨B, hB, hBt.trans hB0t, ?_⟩, srcKey_ext hext E.key, (g4 _ (by simp [bal4])).trans E.gt⟩
  · have := (hL.1 K hK).2.2.2.1
    rw [hKt, hK0t] at this
    have h64 : (guestC.ty tB64).minSz = 64 := by decide
    omega
  · have e := g4 (nm "bs") (by simp [bal4])
    unfold gword at hB0g ⊢
    rw [e, hB0g, hBb]

def LS (ADDR KEY KB : BitVec 64) (Γ : Gam) (t : State σ) : Prop :=
  t.locals.lookup (nm "addr") = some (.val (.word ADDR)) ∧ t.locals.lookup (nm "key") = some (.val (.word KEY)) ∧
    t.locals.lookup (nm "kb") = some (.val (.word KB))

def IsStable (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (L : Gam → State σ → Prop) : Prop :=
  ∀ Γ s Γ1 (st : State σ) p p', PI isc Γ0 s0 p0 L Γ s → TrkC isc Γ0 s0 p0 Γ1 st → ptrsOf s = some p →
    ptrsOf st = some p' → p.Mono p' → Ext Γ Γ1 → NewFresh Γ Γ1 p p' → L Γ1 { st with locals := s.locals }

theorem isStable_LS : IsStable Γ0 s0 p0 (LS (σ := σ) ADDR KEY KB) :=
  fun Γ s Γ1 st p p' hP _ _ _ _ _ _ => hP.2

/-- `st_le64(kb, bal_index)`. -/
theorem is_st (E : IsEnt Γ0 s0 p0 ADDR KB TB) {L : Gam → State σ → Prop}
    (hLA : ∀ Γ t, L Γ t → LS ADDR KEY KB Γ t) (hst : IsStable Γ0 s0 p0 L) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI isc Γ0 s0 p0 L Γ s) iaSt (RR isc Γ0 s0 p0 L) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold iaSt
  refine gstepD hH (sa_of_cs st_cs) (by decide_cbv) (fun g _ => by simp [stSg]) E.hord E.hL ?_ ?_
  · intro Γ s ⟨hIV, hL⟩ vs hvs callee
    obtain ⟨hla, hlk, hkb⟩ := hLA Γ s hL
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [Mpt.Leaves.ev_lv' hkb] at ha1
    cases ha1
    have F := is_facts E hIV
    obtain ⟨pT, hpT, -⟩ := id hIV.1
    obtain ⟨qT, hqT, hordT, hLayT, -⟩ := Struct.trk_G hIV.1
    rw [hpT] at hqT
    cases hqT
    have hk := ia_kbuf hordT hLayT F.K (w := KB) (o := 0) (n := 8) (by simp) (by omega)
    refine ⟨⟨pT, hpT, argsOK2 ⟨KB, rfl, hk.1⟩ trivial⟩, (fun c hc => by cases hc), ?_,
      (fun y _ h => by obtain ⟨c, hc, -⟩ := h; cases hc)⟩
    intro a hca
    left
    rcases argCells_cases hca with ⟨i, n, w, hi, hw, hov⟩ | ⟨i, j, c, d, x, w, hi, hw, hx, hov⟩
    · rcases i with _ | _ | i <;> simp [stSg] at hi
      subst hi
      simp [argW, wordOf] at hw
      subst hw
      exact hk.2 a hov
    · rcases i with _ | _ | i <;> simp [stSg] at hi
  · intro Γ s vs callee v Γ1 st hP hvs hT2 hinfo hq
    obtain ⟨p, p', hp, hp', hm, hx, hnf⟩ := hinfo
    exact hst Γ s Γ1 st p p' hP hT2 hp hp' hm hx hnf

/-- `memcpy(kb + o, e, n)` into the key buffer. -/
theorem is_mcK (E : IsEnt Γ0 s0 p0 ADDR KB TB) {L : Gam → State σ → Prop}
    (hLA : ∀ Γ t, L Γ t → LS ADDR KEY KB Γ t) (hst : IsStable Γ0 s0 p0 L) {o n : Nat} (e : ExpHOL 64)
    (hon : o + n ≤ 64) (hn : n < 2 ^ 64) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI isc Γ0 s0 p0 L Γ s)
      (callD (nm "memcpy") [.op .add [lv (nm "kb"), cw o], e, cw n]) (RR isc Γ0 s0 p0 L) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine gstepD hH (sa_of_cs mc_cs) (by decide_cbv) (fun g _ => by simp [mcSg]) E.hord E.hL ?_ ?_
  · intro Γ s ⟨hIV, hL⟩ vs hvs callee
    obtain ⟨hla, hlk, hkb⟩ := hLA Γ s hL
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    rw [ev_add2 (Mpt.Leaves.ev_lv' hkb) (ev_cw _ o)] at ha1
    cases ha1
    rw [ev_cw] at ha3
    cases ha3
    have F := is_facts E hIV
    obtain ⟨pT, hpT, -⟩ := id hIV.1
    obtain ⟨qT, hqT, hordT, hLayT, -⟩ := Struct.trk_G hIV.1
    rw [hpT] at hqT
    cases hqT
    have hnn : (BitVec.ofNat 64 n).toNat = n := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hn]
    have hk := ia_kbuf hordT hLayT F.K (w := KB + BitVec.ofNat 64 o) (o := o) (n := n) rfl hon
    refine ⟨⟨pT, hpT, argsOK3 ⟨KB + BitVec.ofNat 64 o, BitVec.ofNat 64 n, rfl, by simp [argW, wordOf], by
        rw [hnn]; simpa using hk.1⟩ trivial trivial⟩, (fun c hc => by cases hc), ?_,
      (fun y _ h => by obtain ⟨c, hc, -⟩ := h; cases hc)⟩
    intro a hca
    left
    rcases argCells_cases hca with ⟨i, n', w, hi, hw, hov⟩ | ⟨i, j, c, d, x, w, hi, hw, hx, hov⟩
    · rcases i with _ | _ | _ | i <;> simp [mcSg] at hi
    · rcases i with _ | _ | _ | i <;> simp [mcSg] at hi
      obtain ⟨rfl, rfl, rfl⟩ := hi
      simp [argW, wordOf] at hw hx
      subst hw
      subst hx
      rw [hnn] at hov
      exact hk.2 a (by simpa using hov)
  · intro Γ s vs callee v Γ1 st hP hvs hT2 hinfo hq
    obtain ⟨p, p', hp, hp', hm, hx, hnf⟩ := hinfo
    exact hst Γ s Γ1 st p p' hP hT2 hp hp' hm hx hnf


def LSV (ADDR KEY KB : BitVec 64) (Γ : Gam) (t : State σ) : Prop :=
  LS ADDR KEY KB Γ t ∧ ∃ a b c d : BitVec 64, t.locals.lookup (nm "v") = some (wv [a, b, c, d])

def LSR (ADDR KEY KB : BitVec 64) (p0 : Ptrs) (Γ : Gam) (t : State σ) : Prop :=
  LSV ADDR KEY KB Γ t ∧ ∃ REC : BitVec 64, t.locals.lookup (nm "rec") = some (.val (.word REC)) ∧
    Blk p0 REC 32 Γ t

theorem isStable_LSR : IsStable Γ0 s0 p0 (LSR (σ := σ) ADDR KEY KB p0) := by
  intro Γ s Γ1 st p p' hP hT2 hp hp' hm hx hnf
  obtain ⟨hIV, hlv, REC, hrec, hB⟩ := hP
  obtain ⟨q, hq, hordq, -⟩ := Struct.trk_G hIV.1
  obtain ⟨q', hq', hordq', -⟩ := Struct.trk_G hT2
  rw [hp] at hq
  rw [hp'] at hq'
  cases hq
  cases hq'
  exact ⟨hlv, REC, hrec, blk_step hB hp hp' hordq hordq' hm hnf⟩

theorem is_look (E : IsEnt Γ0 s0 p0 ADDR KB TB)
    (hmiss : HoareG σ guestCtx (fun s => ∃ Γ, PI isc Γ0 s0 p0 (LS ADDR KEY KB) Γ s) isMiss
      (GQ4 isc Γ0 s0 p0)) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI isc Γ0 s0 p0 (LS ADDR KEY KB) Γ s) isLook (GQ4 isc Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  have hneG : NoExc σ guestCtx (nm "htab_get") := noExc_htabX hF.hX _ (by decide)
  unfold isLook
  refine hoareG_decCall (FunSpec.and (funSpec_get_j (σ := σ) hF.hX) hneG) ?_ ?_
  · intro s hs ⟨Γ, hIV, hla, hlk, hkb⟩ vs hvs callee v st ⟨⟨hm, hgl, hd, hbe, hRet⟩, hne⟩ hst hsh
    obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) (by
      have := (shapeEqHOL_eq_true _ _).mp hsh
      exact (shapeEqHOL_eq_true _ _).mpr this)
    match ws, hws with
    | [a, b], _ =>
    have hgs : st.globals = s.globals := AllocImpl.hfm_ext (funext hgl)
    set u1 := setVarHOLFinite (nm "m") (wv [a, b]) { st with locals := s.locals } with hu1
    have hIV1 : IV isc Γ0 s0 p0 Γ u1 :=
      ⟨Struct.trk_congr hH hIV.1 hm hgs hd hbe, fun g hg => by
        show st.globals.lookup g = _
        rw [hgs]; exact hIV.2 g hg⟩
    refine hoareG_conseq (P := fun t => t = u1) ?_ (fun s _ h => h)
      (fun r t _ _ hq => gq4_locals hH r t _ hq)
    refine hoareG_seq (R := fun r t => (r = none ∧ t = u1) ∨ (r ≠ none ∧ GQ4 isc Γ0 s0 p0 r t)) ?_
      (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
    · refine hoareG_ite ?_ ?_
      · refine hoareG_return fun t _ ⟨ht, _⟩ v' hv' => Or.inr ⟨by simp, ?_⟩
        subst ht
        exact gq4_of_iv _ ⟨Struct.trk_congr hH hIV1.1 rfl rfl rfl rfl, hIV1.2⟩
      · exact hoareG_skip fun t _ ⟨ht, _⟩ => Or.inl ⟨rfl, ht⟩
    · refine hoareG_pre hmiss (fun t _ h => ?_)
      rcases h with ⟨-, ht⟩ | ⟨hr, -⟩
      · subst ht
        exact ⟨Γ, hIV1, (lk_set_ne _ _ (by decide)).trans hla, (lk_set_ne _ _ (by decide)).trans hlk,
          (lk_set_ne _ _ (by decide)).trans hkb⟩
      · exact absurd rfl hr
  · intro s hs ⟨Γ, hIV, hla, hlk, hkb⟩ vs hvs callee r st ⟨⟨hm, hgl, hd, hbe, hRet⟩, hne⟩ hst habn
    rcases hne (abn_good habn) with ⟨v, hv⟩ | hab
    · exact absurd hv (Struct.abn_ne_ret habn v)
    · intro rr hrr hna
      cases hrr
      exact absurd hab hna

theorem is_store (E : IsEnt Γ0 s0 p0 ADDR KB TB) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI isc Γ0 s0 p0 (LSR ADDR KEY KB p0) Γ s)
      (.store (lv (nm "rec")) (lv (nm "v"))) (RR isc Γ0 s0 p0 (LSR ADDR KEY KB p0)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine hoareG_store fun s hs ⟨Γ, hIV, ⟨hLS, a, b, c, d, hv0⟩, REC, hrec, hB⟩ w v mem hw hv hmem => ?_
  have hp : REC.toNat + 32 < 2 ^ 64 := by obtain ⟨q, -, -, h, -⟩ := hB; exact h
  rw [Mpt.Leaves.ev_lv' hrec] at hw
  cases hw
  rw [ev_lv, hv0] at hv
  cases hv
  have hfl : flattenHOL (wv [a, b, c, d]) = [HolWordLab.word a, .word b, .word c, .word d] := by
    simp [wv, flattenHOL]
  rw [hfl] at hmem
  have hT := trk_blkstore hH hIV.1 hB hmem (by omega) (by simp)
  exact Or.inl ⟨rfl, Γ, ⟨hT, hIV.2⟩, ⟨hLS, a, b, c, d, hv0⟩, _, hrec, blk_congr hB rfl⟩


theorem hseqR2 {cs : List Cap} {P L L2 : Gam → State σ → Prop} {a b : ProgHOL 64}
    (ha : HoareG σ guestCtx (fun s => ∃ Γ, P Γ s) a (RR cs Γ0 s0 p0 L))
    (hb : HoareG σ guestCtx (fun s => ∃ Γ, PI cs Γ0 s0 p0 L Γ s) b (RR cs Γ0 s0 p0 L2)) :
    HoareG σ guestCtx (fun s => ∃ Γ, P Γ s) (.seq a b) (RR cs Γ0 s0 p0 L2) :=
  hoareG_seq ha (fun r t _ hr _ h => Or.inr ⟨hr, by
      rcases h with ⟨h, -⟩ | ⟨-, hq⟩
      · exact absurd h hr
      · exact hq⟩)
    (hoareG_pre hb (fun t _ h => by
      rcases h with ⟨-, h⟩ | ⟨hr, -⟩
      · exact h
      · exact absurd rfl hr))

theorem is_set (E : IsEnt Γ0 s0 p0 ADDR KB TB) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI isc Γ0 s0 p0 (LSR ADDR KEY KB p0) Γ s)
      (callD (nm "htab_set") [gvE "bal_idx_stor", lv (nm "kb"), lv (nm "rec")])
      (RR isc Γ0 s0 p0 (LSR ADDR KEY KB p0)) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  refine gstepD hH (sa_of_cs (csumm_htab_set hF guestHooksR_mono htabHooks_guestR (th := tHTh60) (by decide)))
    (by decide_cbv) (fun g _ => by simp [setSig]) E.hord E.hL ?_ ?_
  · intro Γ s hP vs hvs callee
    obtain ⟨hIV, ⟨⟨hla, hlk, hkb⟩, hv⟩, REC, hrec, hB⟩ := hP
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have F := is_facts E hIV
    have e1 : ev s (gvE "bal_idx_stor") = some (.val (.word TB)) := F.gt
    rw [e1] at ha1
    cases ha1
    rw [Mpt.Leaves.ev_lv' hkb] at ha2
    cases ha2
    rw [Mpt.Leaves.ev_lv' hrec] at ha3
    cases ha3
    obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := id hIV.1
    obtain ⟨qT, hqT, hordT, hLayT, -⟩ := hGT
    rw [hpT] at hqT
    cases hqT
    obtain ⟨T, hT, hTb, hTt⟩ := F.T
    have hk := ia_kbuf hordT hLayT F.K (w := KB) (o := 0) (n := 60) (by simp) (by omega)
    have hvp : valPT tHTh60 = .any := by decide
    have hkl : htKL tHTh60 = 60 := by decide
    refine ⟨⟨pT, hpT, argsOK3 ⟨TB, rfl, T, hT, hTb, hTt⟩ ⟨KB, rfl, by rw [hkl]; exact hk.1⟩
        (by rw [hvp]; trivial)⟩,
      (fun c hc hne => absurd (by
        simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
        rcases hc with rfl | rfl <;> rfl) hne), ?_,
      cpw_step isc_sub_h60 hIV.1 E.hord E.hL⟩
    intro a hca
    left
    rcases argCells_cases hca with ⟨i, n, w, hi, hw, hov⟩ | ⟨i, j, c, d, x, w, hi, hw, hx, hov⟩
    · rcases i with _ | _ | _ | i <;> simp [setSig, hvp] at hi
      subst hi
      simp [argW, wordOf] at hw
      subst hw
      rw [hkl] at hov
      exact (ia_kbuf hordT hLayT F.K (w := KB) (o := 0) (n := 60) (by simp) (by omega)).2 a hov
    · rcases i with _ | _ | _ | i <;> simp [setSig, hvp] at hi
  · intro Γ s vs callee v Γ1 st hP hvs hT2 hinfo hq
    obtain ⟨p, p', hp, hp', hm, hx, hnf⟩ := hinfo
    exact isStable_LSR Γ s Γ1 st p p' hP hT2 hp hp' hm hx hnf

theorem is_recbody (E : IsEnt Γ0 s0 p0 ADDR KB TB) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI isc Γ0 s0 p0 (LSR ADDR KEY KB p0) Γ s) isRecBody
      (GQ4 isc Γ0 s0 p0) := by
  unfold isRecBody
  refine hseq (is_store E) ?_
  refine hseq (is_st E (L := LSR ADDR KEY KB p0) (fun _ _ h => h.1.1) isStable_LSR) ?_
  refine hseq (is_mcK E (L := LSR ADDR KEY KB p0) (fun _ _ h => h.1.1) isStable_LSR (o := 8) (n := 20)
    (lv (nm "addr")) (by omega) (by decide)) ?_
  refine hseq (is_mcK E (L := LSR ADDR KEY KB p0) (fun _ _ h => h.1.1) isStable_LSR (o := 28) (n := 32)
    (lv (nm "key")) (by omega) (by decide)) ?_
  refine hseq (is_set E) ?_
  exact hoareG_return (P := fun t => ∃ Γ, PI isc Γ0 s0 p0 (LSR ADDR KEY KB p0) Γ t)
    (fun t _ ⟨Γ, hIV, hL⟩ v hv => gq4_of_iv _ ⟨Struct.trk_congr (Rec.foldOK_guestR (σ := σ)).hH hIV.1 rfl rfl rfl rfl, hIV.2⟩)


theorem is_alloc (E : IsEnt Γ0 s0 p0 ADDR KB TB) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI isc Γ0 s0 p0 (LSV ADDR KEY KB) Γ s)
      (.decCall (nm "rec") .one (nm "alloc") [cw 32] isRecBody) (GQ4 isc Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  have hne : NoExc σ guestCtx (nm "alloc") := noExc_htabX hF.hX _ (by decide)
  refine hoareG_decCall (FunSpec.and (FunSpec.and (allocSpec_alloc hF.hX) hne) (FunSpec.and (Frames.funSpec_dom _)
    (funSpec_bal_gw4 hF.hX (f := nm "alloc") (by decide_cbv)))) ?_ ?_
  · intro s hs ⟨Γ, hIV, hLV⟩ vs hvs callee v st ⟨⟨hAl, hne'⟩, ⟨hd, hbe⟩, hgw⟩ hst hsh
    rw [evs_cons (ev_cw _ 32) evs_nil] at hvs
    cases hvs
    obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := id hIV.1
    obtain ⟨qT, hqT, hordT, hLayT, -⟩ := hGT
    rw [hpT] at hqT
    cases hqT
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some pT := (Frames.ptrsOf_congr rfl).trans hpT
    obtain ⟨hm', hgl', p1, hp1, hord1, hmo1, hret⟩ := hAl (by simp [Good]) _ pT rfl hpe hordT
    obtain ⟨q, rfl, hq8, hlive, hna⟩ := hret _ rfl
    have h32 : (BitVec.ofNat 64 32).toNat = 32 := by decide
    rw [h32] at hlive hna
    have hT2 := Struct.trk_alloc hH hA hIV.1 rfl rfl hpe hm' hgl' hp1 hord1 hmo1 hd hbe
    refine hoareG_conseq (P := fun t => t = setVarHOLFinite (nm "rec") (.val (.word q)) { st with locals := s.locals })
      ?_ (fun s _ h => h) (fun r t _ _ hq => gq4_locals hH r t _ hq)
    refine hoareG_pre (is_recbody E (KEY := KEY)) (fun t _ ht => ?_)
    subst ht
    have hnw : q.toNat + 32 < 2 ^ 64 := by
      have h1 := hlive.1
      have h2 := hlive.2
      have := alloc_lt hord1 (show p1.Allocated (q.toNat + 31) by unfold Ptrs.Allocated; left; omega)
      have : scratchEnd < 2 ^ 64 := by decide
      omega
    obtain ⟨⟨hla, hlk, hkb⟩, a, b, c, d, hv0⟩ := hLV
    refine ⟨Γ, ⟨Struct.trk_congr hH hT2 rfl rfl rfl rfl, fun g hg => by
        show st.globals.lookup g = _
        rw [hgw g hg]; exact hIV.2 g hg⟩, ⟨⟨?_, ?_, ?_⟩, a, b, c, d, ?_⟩, q, lk_set_self _ _ _, p1, ?_, hq8, hnw, ?_⟩
    · exact (lk_set_ne _ _ (by decide)).trans hla
    · exact (lk_set_ne _ _ (by decide)).trans hlk
    · exact (lk_set_ne _ _ (by decide)).trans hkb
    · exact (lk_set_ne _ _ (by decide)).trans hv0
    · exact (Frames.ptrsOf_congr rfl).trans hp1
    · intro c h1 h2
      refine ⟨fun hio => hna c h1 h2 (Helpers.allocated_of_inObj hLayT hio), fun h0 => hna c h1 h2 (alloc_mono hmT h0), ?_⟩
      have h1' := hlive.1
      have h2' := hlive.2
      unfold Ptrs.Allocated
      left
      omega
  · intro s hs ⟨Γ, hIV, hLV⟩ vs hvs callee r st ⟨⟨hAl, hne'⟩, ⟨hd, hbe⟩, hgw⟩ hst habn
    rcases hne' (abn_good habn) with ⟨v, hv⟩ | hab
    · exact absurd hv (Struct.abn_ne_ret habn v)
    · intro rr hrr hna
      cases hrr
      exact absurd hab hna

theorem is_miss (E : IsEnt Γ0 s0 p0 ADDR KB TB)
    (hgs : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "ws_get_storage") storWgsSig storWstCaps) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI isc Γ0 s0 p0 (LS ADDR KEY KB) Γ s) isMiss (GQ4 isc Γ0 s0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold isMiss
  refine gstepDec hH (sumSpec_get_pre_tx_storage_k hgs) (by decide_cbv) (fun g _ => by simp [storWgsSig])
    E.hord E.hL (L := LS ADDR KEY KB) (Ln := LSV ADDR KEY KB) ?_ ?_ (is_alloc E (KEY := KEY))
  · intro Γ s ⟨hIV, hla, hlk, hkb⟩ vs hvs callee
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [Mpt.Leaves.ev_lv' hla] at ha1
    cases ha1
    rw [Mpt.Leaves.ev_lv' hlk] at ha2
    cases ha2
    have F := is_facts E hIV
    obtain ⟨pT, hpT, -⟩ := id hIV.1
    exact ⟨⟨pT, hpT, argsOK_allAny (by simp [storWgsSig]) rfl⟩, ⟨ADDR, KEY, rfl, F.B, F.key⟩,
      fun a h => absurd h (argCells_allAny (by simp [storWgsSig])),
      cpw_step isc_sub_gsc hIV.1 E.hord E.hL⟩
  · intro Γ s vs callee v Γ1 st hP hvs hsh hT2 hinfo hq
    obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 4) (by
      have := (shapeEqHOL_eq_true _ _).mp hsh
      exact (shapeEqHOL_eq_true _ _).mpr this)
    match ws, hws with
    | [a, b, c, d], _ =>
    exact ⟨⟨(lk_set_ne _ _ (by decide)).trans hP.2.1, (lk_set_ne _ _ (by decide)).trans hP.2.2.1,
      (lk_set_ne _ _ (by decide)).trans hP.2.2.2⟩, a, b, c, d, lk_set_self _ _ _⟩

theorem is_hoare (E : IsEnt Γ0 s0 p0 ADDR KB TB) (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0)
    (hp0 : ptrsOf s0 = some p0)
    (hgs : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "ws_get_storage") storWgsSig storWstCaps)
    (hla : s0.locals.lookup (nm "addr") = some (.val (.word ADDR)))
    (hlk : s0.locals.lookup (nm "key") = some (.val (.word KEY))) :
    HoareG σ guestCtx (fun u => u = s0) isBody (GQ4 isc Γ0 s0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold isBody
  refine hoareG_dec fun s hs hsu v hv hsh => ?_
  subst hsu
  have e1 : ev s (gvE "bal_key_buf") = some (.val (.word KB)) := E.gk
  rw [e1] at hv
  cases hv
  refine hoareG_conseq (P := fun t => t = setVarHOLFinite (nm "kb") (.val (.word KB)) s) ?_ (fun s _ h => h)
    (fun r t _ _ hq => gq4_locals hH r t _ hq)
  refine hoareG_pre (hseq (is_st E (L := LS ADDR KEY KB) (fun _ _ h => h) isStable_LS) ?_) (fun t _ ht => ?_)
  · refine hseq (is_mcK E (L := LS ADDR KEY KB) (fun _ _ h => h) isStable_LS (o := 8) (n := 20)
      (lv (nm "addr")) (by omega) (by decide)) ?_
    refine hseq (is_mcK E (L := LS ADDR KEY KB) (fun _ _ h => h) isStable_LS (o := 28) (n := 32)
      (lv (nm "key")) (by omega) (by decide)) ?_
    exact is_look E (is_miss E hgs)
  · subst ht
    exact ⟨Γ0, ⟨Struct.trk_congr hH (Struct.trk_refl hG0 hp0) rfl rfl rfl rfl, fun g _ => rfl⟩,
      (lk_set_ne _ _ (by decide)).trans hla, (lk_set_ne _ _ (by decide)).trans hlk, lk_set_self _ _ _⟩

def IsPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ ADDR KEY : BitVec 64, vs = [.val (.word ADDR), .val (.word KEY)] ∧ BsNN s Γ ∧ SrcKey Γ ADDR 20 tHTb20 ∧
    GF (nm "bal_key_buf") tB64 Γ s ∧ GF (nm "bal_idx_stor") tHTh60 Γ s

/-- **`idx_start_storage(addr, key)`** for an address outside the pre-reads table. -/
theorem sumSpec_idx_start_storage
    (hgs : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "ws_get_storage") storWgsSig storWstCaps) :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "idx_start_storage") storWgsSig IsPre
      (fun _ s Γ a => CapPW isc s Γ a) B4Post := by
  have hF := Rec.foldOK_guestR (σ := σ)
  intro vs body callee rs hl s0 hs hloc r hr hg hna Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, rfl, sa, sb, hA, hB⟩ := lookupCode_two code_idx_start_storage (by decide) hl'
  obtain ⟨ADDR, KEY, hvs, hBs, hkey, ⟨KBw, hKBg, K0, hK0, hK0b, hK0t⟩, ⟨TBw, hTBg, T0, hT0, hT0b, hT0t⟩⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have E : IsEnt Γ0 s0 p0 ADDR KBw TBw :=
    ⟨hord0, hL0, ⟨K0, hK0, hK0b, hK0t⟩, AllocImpl.lookup_of_gword hKBg, ⟨T0, hT0, hT0b, hT0t⟩,
      AllocImpl.lookup_of_gword hTBg, hBs, hkey⟩
  have H' := is_hoare E hG0 hp0 hgs (by rw [hloc]; exact hA) (by rw [hloc]; exact hB) s0 hs rfl
    (by rw [hr]; exact hg)
  rw [hr] at H'
  obtain ⟨hbl, Γ', hT⟩ := H' r rfl hna
  obtain ⟨p', hc⟩ := Inc.trk_sumCoreA (sg := storWgsSig)
    (PWs := fun a => ProtCell guestC Γ0 a ∧ CapPW isc s0 Γ0 a)
    (vs := [.val (.word ADDR), .val (.word KEY)]) (r := r) (trk_cpw_down (by decide) hT) hp0 (fun h => by simp [storWgsSig] at h)
    (fun p _ w' hw' i rt w'' hi hfl => by simp [storWgsSig] at hi)
  exact ⟨Γ', p0, p', hc, fun v' hv' => by rw [hv'] at hr; exact hbl⟩

end is

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_idx_start_storage
