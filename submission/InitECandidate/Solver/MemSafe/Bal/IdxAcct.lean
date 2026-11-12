import InitECandidate.Solver.MemSafe.Bal.IdxAcctCode
import InitECandidate.Solver.MemSafe.Bal.BlkKit
import InitECandidate.Solver.MemSafe.Frames.GChkJL

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
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

def stSg : Sig := ⟨[.buf 8, .any], [], [], false⟩
def mcSg : Sig := ⟨[.bufArg 2 1 0, .any, .any], [], [], false⟩
def mzSg : Sig := ⟨[.bufArg 1 1 0, .any], [], [], false⟩

theorem st_mem : (nm "st_le64", stSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by decide +kernel
theorem mc_mem : (nm "memcpy", mcSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by decide +kernel
theorem mz_mem : (nm "memzero", mzSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by decide +kernel

theorem st_cs : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "st_le64") stSg [] := tabJL_guestR _ _ _ st_mem
theorem mc_cs : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "memcpy") mcSg [] := tabJL_guestR _ _ _ mc_mem
theorem mz_cs : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "memzero") mzSg [] := tabJL_guestR _ _ _ mz_mem

def idc : List Cap := capsHT tHTb20 ++ capsHT tHTh28

theorem idc_sub {th : Nat} (h : th = tHTb20 ∨ th = tHTh28) :
    ∀ c ∈ capsHT th, c.ks = [] ∧ ∃ c0 ∈ idc, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t := by
  intro c hc
  have hks := (capsHT_self c hc).1
  refine ⟨hks, c, ?_, (capsHT_self c hc).2.choose_spec.2.1 |> fun _ => ?_, fun _ h => h⟩
  · unfold idc
    simp only [List.mem_append]
    rcases h with rfl | rfl
    · exact Or.inl hc
    · exact Or.inr hc
  · obtain ⟨c0, hc0, hall0, -⟩ := (capsHT_self c hc).2
    simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
    rcases hc with rfl | rfl <;> rfl

structure IaEnt (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (ADDR KB TB : BitVec 64) : Prop where
  hord : p0.Ordered
  hL : Layout guestC p0 Γ0
  K0 : ∃ K ∈ Γ0, K.base = KB ∧ K.ty = tB64
  gk : s0.globals.lookup (nm "bal_key_buf") = some (.val (.word KB))
  T0 : ∃ T ∈ Γ0, T.base = TB ∧ T.ty = tHTh28
  gt : s0.globals.lookup (nm "bal_idx_accts") = some (.val (.word TB))
  B0 : BsNN s0 Γ0
  key : SrcKey Γ0 ADDR 20 tHTb20

structure IaF (Γ : Gam) (t : State σ) (ADDR KB TB : BitVec 64) : Prop where
  K : ∃ K ∈ Γ, K.base = KB ∧ K.ty = tB64 ∧ 64 ≤ K.size
  T : ∃ T ∈ Γ, T.base = TB ∧ T.ty = tHTh28
  B : BsNN t Γ
  key : SrcKey Γ ADDR 20 tHTb20
  gk : t.globals.lookup (nm "bal_key_buf") = some (.val (.word KB))
  gt : t.globals.lookup (nm "bal_idx_accts") = some (.val (.word TB))

section ia
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {ADDR KB TB : BitVec 64}

theorem ia_facts (E : IaEnt Γ0 s0 p0 ADDR KB TB) {Γ : Gam} {t : State σ} (h : IV idc Γ0 s0 p0 Γ t) :
    IaF Γ t ADDR KB TB := by
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
    ⟨B, hB, hBt.trans hB0t, ?_⟩, srcKey_ext hext E.key, (g4 _ (by simp [bal4])).trans E.gk,
    (g4 _ (by simp [bal4])).trans E.gt⟩
  · have := (hL.1 K hK).2.2.2.1
    rw [hKt, hK0t] at this
    have h64 : (guestC.ty tB64).minSz = 64 := by decide
    omega
  · have e := g4 (nm "bs") (by simp [bal4])
    unfold gword at hB0g ⊢
    rw [e, hB0g, hBb]

end ia


section ia2
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {ADDR KB TB : BitVec 64}

/-- A range of `bal_key_buf` inside its 64 bytes. -/
theorem ia_kbuf {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ)
    (hK : ∃ K ∈ Γ, K.base = KB ∧ K.ty = tB64 ∧ 64 ≤ K.size) {w : BitVec 64} {o n : Nat}
    (hw : w = KB + BitVec.ofNat 64 o) (hon : o + n ≤ 64) :
    BufOK guestC Γ p w.toNat n ∧ ∀ a, Overlap w.toNat n a → WCell guestC Γ a := by
  obtain ⟨K, hK, hKb, hKt, hKs⟩ := hK
  have hsc : ∀ k, (guestC.ty K.ty).slot k = .scalar := fun k => by rw [hKt]; show b64Ty.slot k = .scalar; rfl
  have hb := (Struct.obj_bounds hord hL hK).2.1
  unfold Obj.hi at hb
  have hse : scratchEnd < 2 ^ 32 := by decide
  have hlt : KB.toNat + o < 2 ^ 64 := by subst hKb; omega
  have hwn : w.toNat = KB.toNat + o := by
    rw [hw, BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (show o < 2 ^ 64 by omega),
      Nat.mod_eq_of_lt hlt]
  subst hKb
  rw [hwn]
  exact ⟨bufOK_obj hord hL hK hsc (by omega) (by omega), fun a hov => wcell_obj hord hL hK hsc (by omega) (by omega) hov⟩


def LA (ADDR KB : BitVec 64) (Γ : Gam) (t : State σ) : Prop :=
  t.locals.lookup (nm "addr") = some (.val (.word ADDR)) ∧ t.locals.lookup (nm "kb") = some (.val (.word KB))

/-- A local-state predicate that survives a summarised call (locals restored). -/
def IaStable (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (L : Gam → State σ → Prop) : Prop :=
  ∀ Γ s Γ1 (st : State σ) p p', PI idc Γ0 s0 p0 L Γ s → TrkC idc Γ0 s0 p0 Γ1 st → ptrsOf s = some p →
    ptrsOf st = some p' → p.Mono p' → Ext Γ Γ1 → NewFresh Γ Γ1 p p' → L Γ1 { st with locals := s.locals }

theorem iaStable_LA : IaStable Γ0 s0 p0 (LA (σ := σ) ADDR KB) :=
  fun Γ s Γ1 st p p' hP _ _ _ _ _ _ => hP.2

theorem ia_st (E : IaEnt Γ0 s0 p0 ADDR KB TB) {L : Gam → State σ → Prop}
    (hLA : ∀ Γ t, L Γ t → LA ADDR KB Γ t) (hst : IaStable Γ0 s0 p0 L) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI idc Γ0 s0 p0 L Γ s) iaSt
      (RR idc Γ0 s0 p0 L) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold iaSt
  refine gstepD hH (sa_of_cs st_cs) (by decide_cbv) (fun g _ => by simp [stSg]) E.hord E.hL ?_ ?_
  · intro Γ s ⟨hIV, hL⟩ vs hvs callee
    obtain ⟨hla, hkb⟩ := hLA Γ s hL
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [Mpt.Leaves.ev_lv' hkb] at ha1
    cases ha1
    have F := ia_facts E hIV
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
      exact (ia_kbuf hordT hLayT F.K (w := KB) (o := 0) (n := 8) (by simp) (by omega)).2 a hov
    · rcases i with _ | _ | i <;> simp [stSg] at hi
  · intro Γ s vs callee v Γ1 st hP hvs hT2 hinfo hq
    obtain ⟨p, p', hp, hp', hm, hx, hnf⟩ := hinfo
    exact hst Γ s Γ1 st p p' hP hT2 hp hp' hm hx hnf


theorem ia_mc (E : IaEnt Γ0 s0 p0 ADDR KB TB) {L : Gam → State σ → Prop}
    (hLA : ∀ Γ t, L Γ t → LA ADDR KB Γ t) (hst : IaStable Γ0 s0 p0 L) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI idc Γ0 s0 p0 L Γ s) iaMc
      (RR idc Γ0 s0 p0 L) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold iaMc
  refine gstepD hH (sa_of_cs mc_cs) (by decide_cbv) (fun g _ => by simp [mcSg]) E.hord E.hL ?_ ?_
  · intro Γ s ⟨hIV, hL⟩ vs hvs callee
    obtain ⟨hla, hkb⟩ := hLA Γ s hL
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    rw [ev_add2 (Mpt.Leaves.ev_lv' hkb) (ev_cw _ 8)] at ha1
    cases ha1
    rw [Mpt.Leaves.ev_lv' hla] at ha2
    cases ha2
    rw [ev_cw] at ha3
    cases ha3
    have F := ia_facts E hIV
    obtain ⟨pT, hpT, -⟩ := id hIV.1
    obtain ⟨qT, hqT, hordT, hLayT, -⟩ := Struct.trk_G hIV.1
    rw [hpT] at hqT
    cases hqT
    have h20 : (BitVec.ofNat 64 20).toNat = 20 := by decide
    have hk := ia_kbuf hordT hLayT F.K (w := KB + BitVec.ofNat 64 8) (o := 8) (n := 20) rfl (by omega)
    refine ⟨⟨pT, hpT, argsOK3 ⟨KB + BitVec.ofNat 64 8, BitVec.ofNat 64 20, rfl, by simp [argW, wordOf], by
        rw [h20]; simpa using hk.1⟩ trivial trivial⟩, (fun c hc => by cases hc), ?_,
      (fun y _ h => by obtain ⟨c, hc, -⟩ := h; cases hc)⟩
    intro a hca
    left
    rcases argCells_cases hca with ⟨i, n, w, hi, hw, hov⟩ | ⟨i, j, c, d, x, w, hi, hw, hx, hov⟩
    · rcases i with _ | _ | _ | i <;> simp [mcSg] at hi
    · rcases i with _ | _ | _ | i <;> simp [mcSg] at hi
      obtain ⟨rfl, rfl, rfl⟩ := hi
      simp [argW, wordOf] at hw hx
      subst hw
      subst hx
      rw [h20] at hov
      exact hk.2 a (by simpa using hov)
  · intro Γ s vs callee v Γ1 st hP hvs hT2 hinfo hq
    obtain ⟨p, p', hp, hp', hm, hx, hnf⟩ := hinfo
    exact hst Γ s Γ1 st p p' hP hT2 hp hp' hm hx hnf


theorem ia_look (E : IaEnt Γ0 s0 p0 ADDR KB TB)
    (hmiss : HoareG σ guestCtx (fun s => ∃ Γ, PI idc Γ0 s0 p0 (LA ADDR KB) Γ s) iaMiss
      (GQ4 idc Γ0 s0 p0)) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI idc Γ0 s0 p0 (LA ADDR KB) Γ s) iaLook (GQ4 idc Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  have hneG : NoExc σ guestCtx (nm "htab_get") := noExc_htabX hF.hX _ (by decide)
  unfold iaLook
  refine hoareG_decCall (FunSpec.and (funSpec_get_j (σ := σ) hF.hX) hneG) ?_ ?_
  · intro s hs ⟨Γ, hIV, hla, hkb⟩ vs hvs callee v st ⟨⟨hm, hgl, hd, hbe, hRet⟩, hne⟩ hst hsh
    obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) (by
      have := (shapeEqHOL_eq_true _ _).mp hsh
      exact (shapeEqHOL_eq_true _ _).mpr this)
    match ws, hws with
    | [a, b], _ =>
    have hgs : st.globals = s.globals := AllocImpl.hfm_ext (funext hgl)
    set u1 := setVarHOLFinite (nm "m") (wv [a, b]) { st with locals := s.locals } with hu1
    have hIV1 : IV idc Γ0 s0 p0 Γ u1 :=
      ⟨Struct.trk_congr hH hIV.1 hm hgs hd hbe, fun g hg => by
        show st.globals.lookup g = _
        rw [hgs]; exact hIV.2 g hg⟩
    have hla1 : u1.locals.lookup (nm "addr") = some (.val (.word ADDR)) :=
      (lk_set_ne _ _ (by decide)).trans hla
    have hkb1 : u1.locals.lookup (nm "kb") = some (.val (.word KB)) :=
      (lk_set_ne _ _ (by decide)).trans hkb
    refine hoareG_conseq (P := fun t => t = u1) ?_ (fun s _ h => h)
      (fun r t _ _ hq => gq4_locals hH r t _ hq)
    refine hoareG_seq (R := fun r t => (r = none ∧ t = u1) ∨ (r ≠ none ∧ GQ4 idc Γ0 s0 p0 r t)) ?_
      (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
    · refine hoareG_ite ?_ ?_
      · refine hoareG_return fun t _ ⟨ht, _⟩ v' hv' => Or.inr ⟨by simp, ?_⟩
        subst ht
        exact gq4_of_iv _ ⟨Struct.trk_congr hH hIV1.1 rfl rfl rfl rfl, hIV1.2⟩
      · exact hoareG_skip fun t _ ⟨ht, _⟩ => Or.inl ⟨rfl, ht⟩
    · refine hoareG_pre hmiss (fun t _ h => ?_)
      rcases h with ⟨-, ht⟩ | ⟨hr, -⟩
      · subst ht
        exact ⟨Γ, hIV1, hla1, hkb1⟩
      · exact absurd rfl hr
  · intro s hs ⟨Γ, hIV, hla, hkb⟩ vs hvs callee r st ⟨⟨hm, hgl, hd, hbe, hRet⟩, hne⟩ hst habn
    rcases hne (abn_good habn) with ⟨v, hv⟩ | hab
    · exact absurd hv (Struct.abn_ne_ret habn v)
    · intro rr hrr hna
      cases hrr
      exact absurd hab hna


def LR (ADDR KB : BitVec 64) (p0 : Ptrs) (Γ : Gam) (t : State σ) : Prop :=
  LA ADDR KB Γ t ∧ (∃ w, t.locals.lookup (nm "pre") = some (.val (.word w))) ∧
    ∃ REC : BitVec 64, t.locals.lookup (nm "rec") = some (.val (.word REC)) ∧ Blk p0 REC 80 Γ t

theorem iaStable_LR : IaStable Γ0 s0 p0 (LR (σ := σ) ADDR KB p0) := by
  intro Γ s Γ1 st p p' hP hT2 hp hp' hm hx hnf
  obtain ⟨hIV, ⟨hla, hkb⟩, hpre, REC, hrec, hB⟩ := hP
  obtain ⟨q, hq, hordq, -⟩ := Struct.trk_G hIV.1
  obtain ⟨q', hq', hordq', -⟩ := Struct.trk_G hT2
  rw [hp] at hq
  rw [hp'] at hq'
  cases hq
  cases hq'
  exact ⟨⟨hla, hkb⟩, hpre, REC, hrec, blk_step hB hp hp' hordq hordq' hm hnf⟩

theorem lr_pos (hB : Blk p0 REC 80 Γ t) : REC.toNat + 80 < 2 ^ 64 := by
  obtain ⟨q, -, -, h, -⟩ := hB
  exact h

theorem ia_mz (E : IaEnt Γ0 s0 p0 ADDR KB TB) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI idc Γ0 s0 p0 (LR ADDR KB p0) Γ s) (callD (nm "memzero") [lv (nm "rec"), cw 80])
      (RR idc Γ0 s0 p0 (LR ADDR KB p0)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine gstepD hH (sa_of_cs mz_cs) (by decide_cbv) (fun g _ => by simp [mzSg]) E.hord E.hL ?_ ?_
  · intro Γ s hP vs hvs callee
    obtain ⟨hIV, hLA, hpre, REC, hrec, hB⟩ := hP
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [Mpt.Leaves.ev_lv' hrec] at ha1
    cases ha1
    rw [ev_cw] at ha2
    cases ha2
    obtain ⟨pT, hpT, -⟩ := id hIV.1
    have h80 : (BitVec.ofNat 64 80).toNat = 80 := by decide
    have hp := lr_pos hB
    refine ⟨⟨pT, hpT, argsOK2 ⟨REC, BitVec.ofNat 64 80, rfl, by simp [argW, wordOf], by
        rw [h80]; exact blk_bufOK hB hpT (by omega) (by omega)⟩ trivial⟩, (fun c hc => by cases hc), ?_,
      (fun y _ h => by obtain ⟨c, hc, -⟩ := h; cases hc)⟩
    intro a hca
    right; left
    rcases argCells_cases hca with ⟨i, n, w, hi, hw, hov⟩ | ⟨i, j, c, d, x, w, hi, hw, hx, hov⟩
    · rcases i with _ | _ | i <;> simp [mzSg] at hi
    · rcases i with _ | _ | i <;> simp [mzSg] at hi
      obtain ⟨rfl, rfl, rfl⟩ := hi
      simp [argW, wordOf] at hw hx
      subst hw
      subst hx
      rw [h80] at hov
      exact blk_notAlloc hB (by omega) (by omega) hov
  · intro Γ s vs callee v Γ1 st hP hvs hT2 hinfo hq
    obtain ⟨p, p', hp, hp', hm, hx, hnf⟩ := hinfo
    exact iaStable_LR Γ s Γ1 st p p' hP hT2 hp hp' hm hx hnf


theorem ia_mcR (E : IaEnt Γ0 s0 p0 ADDR KB TB) (e : ExpHOL 64) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI idc Γ0 s0 p0 (LR ADDR KB p0) Γ s)
      (callD (nm "memcpy") [.op .add [lv (nm "rec"), cw 48], e, cw 32])
      (RR idc Γ0 s0 p0 (LR ADDR KB p0)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine gstepD hH (sa_of_cs mc_cs) (by decide_cbv) (fun g _ => by simp [mcSg]) E.hord E.hL ?_ ?_
  · intro Γ s hP vs hvs callee
    obtain ⟨hIV, hLA, hpre, REC, hrec, hB⟩ := hP
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    rw [ev_add2 (Mpt.Leaves.ev_lv' hrec) (ev_cw _ 48)] at ha1
    cases ha1
    rw [ev_cw] at ha3
    cases ha3
    obtain ⟨pT, hpT, -⟩ := id hIV.1
    have h32 : (BitVec.ofNat 64 32).toNat = 32 := by decide
    have hp := lr_pos hB
    have h48 : (REC + BitVec.ofNat 64 48).toNat = REC.toNat + 48 := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
    refine ⟨⟨pT, hpT, argsOK3 ⟨REC + BitVec.ofNat 64 48, BitVec.ofNat 64 32, rfl, by simp [argW, wordOf], by
        rw [h32, h48]; exact blk_bufOK hB hpT (by omega) (by omega)⟩ trivial trivial⟩,
      (fun c hc => by cases hc), ?_, (fun y _ h => by obtain ⟨c, hc, -⟩ := h; cases hc)⟩
    intro a hca
    right; left
    rcases argCells_cases hca with ⟨i, n, w, hi, hw, hov⟩ | ⟨i, j, c, d, x, w, hi, hw, hx, hov⟩
    · rcases i with _ | _ | _ | i <;> simp [mcSg] at hi
    · rcases i with _ | _ | _ | i <;> simp [mcSg] at hi
      obtain ⟨rfl, rfl, rfl⟩ := hi
      simp [argW, wordOf] at hw hx
      subst hw
      subst hx
      rw [h32, h48] at hov
      exact blk_notAlloc hB (by omega) (by omega) hov
  · intro Γ s vs callee v Γ1 st hP hvs hT2 hinfo hq
    obtain ⟨p, p', hp, hp', hm, hx, hnf⟩ := hinfo
    exact iaStable_LR Γ s Γ1 st p p' hP hT2 hp hp' hm hx hnf


theorem ia_store (E : IaEnt Γ0 s0 p0 ADDR KB TB) {a e : ExpHOL 64} {off len : Nat}
    (hoff : off + 8 * len ≤ 80)
    (hlen : ∀ (s : State σ) v, ev s e = some v → (flattenHOL v).length = len)
    (hav : ∀ (s : State σ) REC, s.locals.lookup (nm "rec") = some (.val (.word REC)) →
      ∀ w, ev s a = some (.val (.word w)) → w = REC + BitVec.ofNat 64 off) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI idc Γ0 s0 p0 (LR ADDR KB p0) Γ s) (.store a e)
      (RR idc Γ0 s0 p0 (LR ADDR KB p0)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine hoareG_store fun s hs ⟨Γ, hIV, hLA, hpre, REC, hrec, hB⟩ w v mem hw hv hmem => ?_
  have hwe := hav s REC hrec w hw
  have hp := lr_pos hB
  have hwn : w.toNat = REC.toNat + off := by
    rw [hwe, BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
  have hl := hlen s v hv
  have hT := trk_blkstore hH hIV.1 hB hmem (by omega) (by rw [hl]; omega)
  refine Or.inl ⟨rfl, Γ, ⟨hT, hIV.2⟩, hLA, hpre, REC, hrec, blk_congr hB rfl⟩


theorem rr_gq {L : Gam → State σ → Prop} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : RR idc Γ0 s0 p0 L r t) : GQ4 idc Γ0 s0 p0 r t := by
  rcases h with ⟨hr, Γ, hP⟩ | ⟨-, hq⟩
  · intro rr hrr; rw [hr] at hrr; cases hrr
  · exact hq


theorem hseqR {P L L2 : Gam → State σ → Prop} {a b : ProgHOL 64}
    (ha : HoareG σ guestCtx (fun s => ∃ Γ, P Γ s) a (RR idc Γ0 s0 p0 L))
    (hb : HoareG σ guestCtx (fun s => ∃ Γ, PI idc Γ0 s0 p0 L Γ s) b (RR idc Γ0 s0 p0 L2)) :
    HoareG σ guestCtx (fun s => ∃ Γ, P Γ s) (.seq a b) (RR idc Γ0 s0 p0 L2) :=
  hoareG_seq ha (fun r t _ hr _ h => Or.inr ⟨hr, by
      rcases h with ⟨h, -⟩ | ⟨-, hq⟩
      · exact absurd h hr
      · exact hq⟩)
    (hoareG_pre hb (fun t _ h => by
      rcases h with ⟨-, h⟩ | ⟨hr, -⟩
      · exact h
      · exact absurd rfl hr))

theorem ia_fill (E : IaEnt Γ0 s0 p0 ADDR KB TB) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI idc Γ0 s0 p0 (LR ADDR KB p0) Γ s) iaFill
      (RR idc Γ0 s0 p0 (LR ADDR KB p0)) := by
  unfold iaFill
  refine hseqR (ia_store E (a := lv (nm "rec")) (e := cw 1) (off := 0) (len := 1) (by omega)
    (fun s v hv => by rw [ev_cw] at hv; cases hv; simp [flattenHOL])
    (fun s REC hrec w hw => by rw [Mpt.Leaves.ev_lv' hrec] at hw; cases hw; simp)) ?_
  refine hseqR (ia_store E (a := .op .add [lv (nm "rec"), cw 8])
    (e := .load .one (.op .add [lv (nm "pre"), cw 0])) (off := 8) (len := 1) (by omega)
    (fun s v hv => ev_load1_len hv)
    (fun s REC hrec w hw => by rw [ev_add2 (Mpt.Leaves.ev_lv' hrec) (ev_cw _ 8)] at hw; cases hw; rfl)) ?_
  refine hseqR (ia_store E (a := .op .add [lv (nm "rec"), cw 16])
    (e := .load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "pre"), cw 8])) (off := 16) (len := 4)
    (by omega) (fun s v hv => ev_load4 hv)
    (fun s REC hrec w hw => by rw [ev_add2 (Mpt.Leaves.ev_lv' hrec) (ev_cw _ 16)] at hw; cases hw; rfl)) ?_
  exact ia_mcR E (.load .one (.op .add [lv (nm "pre"), cw 48]))

theorem ia_set (E : IaEnt Γ0 s0 p0 ADDR KB TB) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI idc Γ0 s0 p0 (LR ADDR KB p0) Γ s)
      (callD (nm "htab_set") [gvE "bal_idx_accts", lv (nm "kb"), lv (nm "rec")])
      (RR idc Γ0 s0 p0 (LR ADDR KB p0)) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  refine gstepD hH (sa_of_cs (csumm_htab_set hF guestHooksR_mono htabHooks_guestR (th := tHTh28) (by decide)))
    (by decide_cbv) (fun g _ => by simp [setSig]) E.hord E.hL ?_ ?_
  · intro Γ s hP vs hvs callee
    obtain ⟨hIV, ⟨hla, hkb⟩, hpre, REC, hrec, hB⟩ := hP
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have F := ia_facts E hIV
    have e1 : ev s (gvE "bal_idx_accts") = some (.val (.word TB)) := F.gt
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
    have hk := ia_kbuf hordT hLayT F.K (w := KB) (o := 0) (n := 28) (by simp) (by omega)
    have hvp : valPT tHTh28 = .any := by decide
    have hkl : htKL tHTh28 = 28 := by decide
    refine ⟨⟨pT, hpT, argsOK3 ⟨TB, rfl, T, hT, hTb, hTt⟩ ⟨KB, rfl, by rw [hkl]; exact hk.1⟩
        (by rw [hvp]; trivial)⟩,
      (fun c hc hne => absurd (by
        simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
        rcases hc with rfl | rfl <;> rfl) hne), ?_,
      cpw_step (idc_sub (Or.inr rfl)) hIV.1 E.hord E.hL⟩
    intro a hca
    left
    rcases argCells_cases hca with ⟨i, n, w, hi, hw, hov⟩ | ⟨i, j, c, d, x, w, hi, hw, hx, hov⟩
    · rcases i with _ | _ | _ | i <;> simp [setSig, hvp] at hi
      subst hi
      simp [argW, wordOf] at hw
      subst hw
      rw [hkl] at hov
      exact (ia_kbuf hordT hLayT F.K (w := KB) (o := 0) (n := 28) (by simp) (by omega)).2 a hov
    · rcases i with _ | _ | _ | i <;> simp [setSig, hvp] at hi
  · intro Γ s vs callee v Γ1 st hP hvs hT2 hinfo hq
    obtain ⟨p, p', hp, hp', hm, hx, hnf⟩ := hinfo
    exact iaStable_LR Γ s Γ1 st p p' hP hT2 hp hp' hm hx hnf

theorem ia_recbody (E : IaEnt Γ0 s0 p0 ADDR KB TB) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI idc Γ0 s0 p0 (LR ADDR KB p0) Γ s) iaRecBody
      (GQ4 idc Γ0 s0 p0) := by
  unfold iaRecBody
  refine hseq (ia_mz E) ?_
  refine hseq (ia_mcR E (gvE "empty_code_hash")) ?_
  refine hseq (hoareG_ite (Q := RR idc Γ0 s0 p0 (LR ADDR KB p0))
    (hoareG_pre (ia_fill E) (fun t _ h => h.1)) (hoareG_skip fun t _ ⟨hP, _⟩ => Or.inl ⟨rfl, hP⟩)) ?_
  refine hseq (ia_st E (L := LR ADDR KB p0) (fun _ _ h => h.1) iaStable_LR) ?_
  refine hseq (ia_mc E (L := LR ADDR KB p0) (fun _ _ h => h.1) iaStable_LR) ?_
  refine hseq (ia_set E) ?_
  exact hoareG_return (P := fun t => ∃ Γ, PI idc Γ0 s0 p0 (LR ADDR KB p0) Γ t)
    (fun t _ ⟨Γ, hIV, hL⟩ v hv => gq4_of_iv _ ⟨Struct.trk_congr (Rec.foldOK_guestR (σ := σ)).hH hIV.1 rfl rfl rfl rfl, hIV.2⟩)


def LP (ADDR KB : BitVec 64) (Γ : Gam) (t : State σ) : Prop :=
  LA ADDR KB Γ t ∧ ∃ w, t.locals.lookup (nm "pre") = some (.val (.word w))

theorem ia_alloc (E : IaEnt Γ0 s0 p0 ADDR KB TB) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI idc Γ0 s0 p0 (LP ADDR KB) Γ s)
      (.decCall (nm "rec") .one (nm "alloc") [cw 80] iaRecBody) (GQ4 idc Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  have hne : NoExc σ guestCtx (nm "alloc") := noExc_htabX hF.hX _ (by decide)
  refine hoareG_decCall (FunSpec.and (FunSpec.and (allocSpec_alloc hF.hX) hne) (FunSpec.and (Frames.funSpec_dom _)
    (funSpec_bal_gw4 hF.hX (f := nm "alloc") (by decide_cbv)))) ?_ ?_
  · intro s hs ⟨Γ, hIV, hLA, hpre⟩ vs hvs callee v st ⟨⟨hAl, hne'⟩, ⟨hd, hbe⟩, hgw⟩ hst hsh
    rw [evs_cons (ev_cw _ 80) evs_nil] at hvs
    cases hvs
    obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := id hIV.1
    obtain ⟨qT, hqT, hordT, hLayT, -⟩ := hGT
    rw [hpT] at hqT
    cases hqT
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some pT := (Frames.ptrsOf_congr rfl).trans hpT
    obtain ⟨hm', hgl', p1, hp1, hord1, hmo1, hret⟩ := hAl (by simp [Good]) _ pT rfl hpe hordT
    obtain ⟨q, rfl, hq8, hlive, hna⟩ := hret _ rfl
    have h80 : (BitVec.ofNat 64 80).toNat = 80 := by decide
    rw [h80] at hlive hna
    have hT2 := Struct.trk_alloc hH hA hIV.1 rfl rfl hpe hm' hgl' hp1 hord1 hmo1 hd hbe
    refine hoareG_conseq (P := fun t => t = setVarHOLFinite (nm "rec") (.val (.word q)) { st with locals := s.locals })
      ?_ (fun s _ h => h) (fun r t _ _ hq => gq4_locals hH r t _ hq)
    refine hoareG_pre (ia_recbody E) (fun t _ ht => ?_)
    subst ht
    have hnw : q.toNat + 80 < 2 ^ 64 := by
      have h1 := hlive.1
      have h2 := hlive.2
      have := alloc_lt hord1 (show p1.Allocated (q.toNat + 79) by unfold Ptrs.Allocated; left; omega)
      have : scratchEnd < 2 ^ 64 := by decide
      omega
    refine ⟨Γ, ⟨Struct.trk_congr hH hT2 rfl rfl rfl rfl, fun g hg => by
        show st.globals.lookup g = _
        rw [hgw g hg]; exact hIV.2 g hg⟩, ⟨?_, ?_⟩, ?_, q, lk_set_self _ _ _, p1, ?_, hq8, hnw, ?_⟩
    · exact (lk_set_ne _ _ (by decide)).trans hLA.1
    · exact (lk_set_ne _ _ (by decide)).trans hLA.2
    · obtain ⟨w, hw⟩ := hpre
      exact ⟨w, (lk_set_ne _ _ (by decide)).trans hw⟩
    · exact (Frames.ptrsOf_congr rfl).trans hp1
    · intro c h1 h2
      refine ⟨fun hio => hna c h1 h2 (Helpers.allocated_of_inObj hLayT hio), fun h0 => hna c h1 h2 (alloc_mono hmT h0), ?_⟩
      have h1 := hlive.1
      have h2 := hlive.2
      unfold Ptrs.Allocated
      left
      omega
  · intro s hs ⟨Γ, hIV, hLA, hpre⟩ vs hvs callee r st ⟨⟨hAl, hne'⟩, ⟨hd, hbe⟩, hgw⟩ hst habn
    rcases hne' (abn_good habn) with ⟨v, hv⟩ | hab
    · exact absurd hv (Struct.abn_ne_ret habn v)
    · intro rr hrr hna
      cases hrr
      exact absurd hab hna

theorem ia_miss (E : IaEnt Γ0 s0 p0 ADDR KB TB) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI idc Γ0 s0 p0 (LA ADDR KB) Γ s) iaMiss (GQ4 idc Γ0 s0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold iaMiss
  refine gstepDec hH (sumSpec_get_pre_tx_account_k (σ := σ)) (by decide_cbv) (fun g _ => by simp [rprSig])
    E.hord E.hL ?_ ?_ (ia_alloc E)
  · intro Γ s ⟨hIV, hla, hkb⟩ vs hvs callee
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    rw [evs_nil] at hr1
    cases hr1
    rw [Mpt.Leaves.ev_lv' hla] at ha1
    cases ha1
    have F := ia_facts E hIV
    obtain ⟨pT, hpT, -⟩ := id hIV.1
    exact ⟨⟨pT, hpT, argsOK_any1⟩, ⟨ADDR, rfl, F.B, F.key⟩, fun a h => absurd h argCells_any1,
      cpw_step (idc_sub (Or.inl rfl)) hIV.1 E.hord E.hL⟩
  · intro Γ s vs callee v Γ1 st hP hvs hsh hT2 hinfo hq
    obtain ⟨w, rfl⟩ := val_of_shape1 hsh
    exact ⟨⟨(lk_set_ne _ _ (by decide)).trans hP.2.1, (lk_set_ne _ _ (by decide)).trans hP.2.2⟩,
      w, lk_set_self _ _ _⟩


theorem ia_hoare (E : IaEnt Γ0 s0 p0 ADDR KB TB) (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0)
    (hp0 : ptrsOf s0 = some p0)
    (hla : s0.locals.lookup (nm "addr") = some (.val (.word ADDR))) :
    HoareG σ guestCtx (fun u => u = s0) iaBody (GQ4 idc Γ0 s0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold iaBody
  refine hoareG_dec fun s hs hsu v hv hsh => ?_
  subst hsu
  have e1 : ev s (gvE "bal_key_buf") = some (.val (.word KB)) := E.gk
  rw [e1] at hv
  cases hv
  refine hoareG_conseq (P := fun t => t = setVarHOLFinite (nm "kb") (.val (.word KB)) s) ?_ (fun s _ h => h)
    (fun r t _ _ hq => gq4_locals hH r t _ hq)
  refine hoareG_pre (hseq (ia_st E (L := LA ADDR KB) (fun _ _ h => h) iaStable_LA) ?_) (fun t _ ht => ?_)
  · refine hseq (ia_mc E (L := LA ADDR KB) (fun _ _ h => h) iaStable_LA) ?_
    exact ia_look E (ia_miss E)
  · subst ht
    exact ⟨Γ0, ⟨Struct.trk_congr hH (Struct.trk_refl hG0 hp0) rfl rfl rfl rfl, fun g _ => rfl⟩,
      (lk_set_ne _ _ (by decide)).trans hla, lk_set_self _ _ _⟩

def IaPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ ADDR : BitVec 64, vs = [.val (.word ADDR)] ∧ BsNN s Γ ∧ SrcKey Γ ADDR 20 tHTb20 ∧
    GF (nm "bal_key_buf") tB64 Γ s ∧ GF (nm "bal_idx_accts") tHTh28 Γ s

/-- The six BAL globals keep their values. -/
def B4Post (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → ∀ g ∈ bal4, t.globals.lookup g = s.globals.lookup g

/-- **`idx_start_account(addr)`** for a key outside the pre-reads table (e.g. an entry of the
transaction's tables). Pre: `BsNN`, `SrcKey Γ addr 20 tHTb20`, `bal_key_buf` a `tB64` object and
`bal_idx_accts` a `tHTh28` object. It may end in the exceptions of the witness reads. -/
theorem sumSpec_idx_start_account :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "idx_start_account") rprSig IaPre
      (fun _ s Γ a => CapPW idc s Γ a) B4Post := by
  have hF := Rec.foldOK_guestR (σ := σ)
  intro vs body callee rs hl s0 hs hloc r hr hg hna Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, rfl, sa, hA⟩ := lookupCode_one code_idx_start_account hl'
  obtain ⟨ADDR, hvs, hB, hkey, ⟨KBw, hKBg, K0, hK0, hK0b, hK0t⟩, ⟨TBw, hTBg, T0, hT0, hT0b, hT0t⟩⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hla : s0.locals.lookup (nm "addr") = some (.val (.word ADDR)) := by rw [hloc]; exact hA
  have E : IaEnt Γ0 s0 p0 ADDR KBw TBw :=
    ⟨hord0, hL0, ⟨K0, hK0, hK0b, hK0t⟩, AllocImpl.lookup_of_gword hKBg, ⟨T0, hT0, hT0b, hT0t⟩,
      AllocImpl.lookup_of_gword hTBg, hB, hkey⟩
  have H' := ia_hoare E hG0 hp0 hla s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at H'
  obtain ⟨hbl, Γ', hT⟩ := H' r rfl hna
  obtain ⟨p', hc⟩ := Inc.trk_sumCoreA (sg := rprSig)
    (PWs := fun a => ProtCell guestC Γ0 a ∧ CapPW idc s0 Γ0 a)
    (vs := [.val (.word ADDR)]) (r := r) (trk_cpw_down (by decide) hT) hp0 (fun h => by simp [rprSig] at h)
    (fun p _ w' hw' i rt w'' hi hfl => by simp [rprSig] at hi)
  exact ⟨Γ', p0, p', hc, fun v' hv' => by rw [hv'] at hr; exact hbl⟩

end ia2

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_idx_start_account
