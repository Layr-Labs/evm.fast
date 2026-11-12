import InitECandidate.Solver.MemSafe.Bal.MergeCode
import InitECandidate.Solver.MemSafe.HtabEntries.Union2

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

/-- `ts` is a non-null transaction-state object. -/
def TsNN (s : State σ) (Γ : Gam) : Prop :=
  ∃ T ∈ Γ, T.ty = tTS ∧ gword s (nm "ts") = some T.base

def mgc : List Cap :=
  capsHT tHTb20 ++ capsHT tHTb52 ++ capsHT tHTbc32 ++ capsHT tHTbt20 ++ capsHT tHTb32

theorem mgc_sub {th : Nat} (h : th = tHTb20 ∨ th = tHTb52 ∨ th = tHTbc32 ∨ th = tHTbt20 ∨ th = tHTb32) :
    ∀ c ∈ capsHT th, c.ks = [] ∧ ∃ c0 ∈ mgc, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t := by
  intro c hc
  refine ⟨(capsHT_self c hc).1, c, ?_, ?_, fun _ h => h⟩
  · unfold mgc
    simp only [List.mem_append]
    rcases h with rfl | rfl | rfl | rfl | rfl <;> tauto
  · simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
    rcases hc with rfl | rfl <;> rfl

structure MgEnt (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (BB TB : BitVec 64) : Prop where
  hord : p0.Ordered
  hL : Layout guestC p0 Γ0
  B0 : ∃ B ∈ Γ0, B.base = BB ∧ B.ty = tBS
  gb : s0.globals.lookup (nm "bs") = some (.val (.word BB))
  T0 : ∃ T ∈ Γ0, T.base = TB ∧ T.ty = tTS
  gt : s0.globals.lookup (nm "ts") = some (.val (.word TB))

structure MgF (Γ : Gam) (t : State σ) (BB TB : BitVec 64) : Prop where
  B : ∃ B ∈ Γ, B.base = BB ∧ B.ty = tBS ∧ 80 ≤ B.size
  T : ∃ T ∈ Γ, T.base = TB ∧ T.ty = tTS ∧ 72 ≤ T.size
  gb : t.globals.lookup (nm "bs") = some (.val (.word BB))
  gt : t.globals.lookup (nm "ts") = some (.val (.word TB))

section mg
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {BB TB : BitVec 64}

theorem mg_facts (E : MgEnt Γ0 s0 p0 BB TB) {Γ : Gam} {t : State σ} (h : IV mgc Γ0 s0 p0 Γ t) :
    MgF Γ t BB TB := by
  have hext := Struct.trk_ext h.1
  obtain ⟨q, hq, hord, hL, -⟩ := Struct.trk_G h.1
  have g4 : ∀ g ∈ bal4, t.globals.lookup g = s0.globals.lookup g := h.2
  obtain ⟨B0, hB0, hB0b, hB0t⟩ := E.B0
  obtain ⟨B, hB, hBb, hBt, -⟩ := hext B0 hB0
  obtain ⟨T0, hT0, hT0b, hT0t⟩ := E.T0
  obtain ⟨T, hT, hTb, hTt, -⟩ := hext T0 hT0
  refine ⟨⟨B, hB, hBb.trans hB0b, hBt.trans hB0t, ?_⟩, ⟨T, hT, hTb.trans hT0b, hTt.trans hT0t, ?_⟩,
    (g4 _ (by simp [bal4])).trans E.gb, (g4 _ (by simp [bal4])).trans E.gt⟩
  · have := (hL.1 B hB).2.2.2.1
    rw [hBt, hB0t] at this
    have h : (guestC.ty tBS).minSz = 80 := by decide
    omega
  · have := (hL.1 T hT).2.2.2.1
    rw [hTt, hT0t] at this
    have h : (guestC.ty tTS).minSz = 72 := by decide
    omega

theorem cell_eq_off (B : Obj) {j k : Nat} (h : k = 8 * j) : B.cell j = B.base + BitVec.ofNat 64 k := by
  unfold Obj.cell; rw [h]

/-- `htab_union_into(bs[8 j], ts[8 j])` for one block / transaction table pair. -/
theorem mg_union (E : MgEnt Γ0 s0 p0 BB TB) {j th tt : Nat} (hth : th ∈ hdrTys) (htt : tt ∈ hdrTys)
    (hne : th ≠ tt) (hKL : htKL tt = htKL th) (hV : valK tt = valK th) (hjb : j < 10) (hjt : j < 9)
    (hbs : (guestC.ty tBS).slot j = .ptr th) (hts : (guestC.ty tTS).slot j = .ptr tt)
    (hc : th = tHTb20 ∨ th = tHTb52 ∨ th = tHTbc32 ∨ th = tHTbt20 ∨ th = tHTb32) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI mgc Γ0 s0 p0 (fun _ _ => True) Γ s) (mgU (8 * j))
      (RR mgc Γ0 s0 p0 (fun _ _ => True)) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  unfold mgU
  refine gstepD hH (sumSpec_htab_union_into2 hF guestHooksR_mono htabHooks_guestR hth htt hne hKL hV) (by decide_cbv) (fun g _ => by simp [unionSig2])
    E.hord E.hL ?_ ?_
  · intro Γ s ⟨hIV, _⟩ vs hvs callee
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    have F := mg_facts E hIV
    obtain ⟨B, hB, hBb, hBt, hBs⟩ := F.B
    obtain ⟨T, hT, hTb, hTt, hTs⟩ := F.T
    have e1 := lp_ev_ld (ev_add2 (ev_gv F.gb) (ev_cw _ (8 * j))) ha1
    have e2 := lp_ev_ld (ev_add2 (ev_gv F.gt) (ev_cw _ (8 * j))) ha2
    subst e1 e2
    obtain ⟨pT, hpT, -⟩ := id hIV.1
    obtain ⟨X1, hX1, hX1b, hX1t⟩ := slot_ptr (Struct.trk_G hIV.1) hB (by omega) (show (guestC.ty B.ty).slot j = .ptr th by rw [hBt]; exact hbs)
    obtain ⟨X2, hX2, hX2b, hX2t⟩ := slot_ptr (Struct.trk_G hIV.1) hT (by omega) (show (guestC.ty T.ty).slot j = .ptr tt by rw [hTt]; exact hts)
    rw [cell_eq_off B (k := 8 * j) rfl, hBb] at hX1b
    rw [cell_eq_off T (k := 8 * j) rfl, hTb] at hX2b
    refine ⟨⟨pT, hpT, argsOK2 ⟨_, rfl, X1, hX1, hX1b, hX1t⟩ ⟨_, rfl, X2, hX2, hX2b, hX2t⟩⟩, trivial,
      fun a h => absurd h (argCells_noBuf (by simp [unionSig2])),
      cpw_step (mgc_sub hc) hIV.1 E.hord E.hL⟩
  · intro Γ s vs callee v Γ1 st hP hvs hT2 hinfo hq
    trivial

end mg


section mg2
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {BB TB : BitVec 64}

def psL (OW BW CW IW : BitVec 64) : List (MlS × ValueHOL 64) :=
  [(nm "outer", .val (.word OW)), (nm "bouter", .val (.word BW)), (nm "cap", .val (.word CW)),
    (nm "i", .val (.word IW))]

def OF (OW BW : BitVec 64) (Γ : Gam) : Prop :=
  (∃ To ∈ Γ, To.base = OW ∧ To.ty = tHTt20) ∧ (∃ Bo ∈ Γ, Bo.base = BW ∧ Bo.ty = tHTbt20)

theorem of_ext {OW BW : BitVec 64} {Γ Γ1 : Gam} (hx : Ext Γ Γ1) (h : OF OW BW Γ) : OF OW BW Γ1 := by
  obtain ⟨⟨To, hTo, hTob, hTot⟩, ⟨Bo, hBo, hBob, hBot⟩⟩ := h
  obtain ⟨To', hTo', a1, a2, -⟩ := hx To hTo
  obtain ⟨Bo', hBo', b1, b2, -⟩ := hx Bo hBo
  exact ⟨⟨To', hTo', a1.trans hTob, a2.trans hTot⟩, ⟨Bo', hBo', b1.trans hBob, b2.trans hBot⟩⟩

/-- The loop invariant. -/
def Lloop (OW BW : BitVec 64) (Γ : Gam) (t : State σ) : Prop :=
  OF OW BW Γ ∧ ∃ CW IW, LL (psL OW BW CW IW) Γ t

def L1 (OW BW CW IW : BitVec 64) (Γ : Gam) (t : State σ) : Prop :=
  OF OW BW Γ ∧ LL (psL OW BW CW IW) Γ t

/-- After `s = htab_item(outer, i)`. -/
def LIt (OW BW CW IW : BitVec 64) (Γ : Gam) (t : State σ) : Prop :=
  L1 OW BW CW IW Γ t ∧ ∃ a b c : BitVec 64, t.locals.lookup (nm "s") = some (wv [a, b, c]) ∧
    (a ≠ 0 → SrcKey Γ b 20 tHTbt20 ∧ Fits Γ (.ptr tHTh32) c)

theorem psL_ne (OW BW CW IW : BitVec 64) {x : MlS} (h : x ≠ nm "outer" ∧ x ≠ nm "bouter" ∧ x ≠ nm "cap" ∧ x ≠ nm "i") :
    ∀ p ∈ psL OW BW CW IW, p.1 ≠ x := by
  intro p hp
  simp only [psL, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl
  · exact fun e => h.1 e.symm
  · exact fun e => h.2.1 e.symm
  · exact fun e => h.2.2.1 e.symm
  · exact fun e => h.2.2.2 e.symm

theorem mg_item (E : MgEnt Γ0 s0 p0 BB TB) {OW BW CW IW : BitVec 64} {k : ProgHOL 64}
    (hk : HoareG σ guestCtx (fun s => ∃ Γ, PI mgc Γ0 s0 p0 (LIt OW BW CW IW) Γ s) k
      (RR mgc Γ0 s0 p0 (Lloop OW BW))) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI mgc Γ0 s0 p0 (L1 OW BW CW IW) Γ s)
      (.decCall (nm "s") (.comb [.one, .one, .one]) (nm "htab_item") [lv (nm "outer"), lv (nm "i")] k)
      (RR mgc Γ0 s0 p0 (Lloop OW BW)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine gstepDec2 hH (sumSpec_htab_item_src (σ := σ)) (by decide_cbv) (fun g _ => by simp [itemSg])
    E.hord E.hL (L := L1 OW BW CW IW) (Ln := LIt OW BW CW IW) (L2 := Lloop OW BW) ?_ ?_ ?_ hk
  · intro Γ s ⟨hIV, hOF, hLL⟩ vs hvs callee
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [Mpt.Leaves.ev_lv' (hLL (nm "outer", .val (.word OW)) (by simp [psL]))] at ha1
    rw [Mpt.Leaves.ev_lv' (hLL (nm "i", .val (.word IW)) (by simp [psL]))] at ha2
    cases ha1; cases ha2
    obtain ⟨pT, hpT, -⟩ := id hIV.1
    obtain ⟨To, hTo, hTob, hTot⟩ := hOF.1
    refine ⟨⟨pT, hpT, argsOK_allAny (by simp [itemSg]) rfl⟩, ⟨To, hTo, ?_, ?_, IW, ?_⟩,
      fun a h => absurd h (argCells_noBuf (by simp [itemSg])), fun y _ h => absurd h id⟩
    · rw [hTot]; exact hkOf_of_tab (by decide)
    · rw [hTot]; decide
    · rw [hTob]
  · intro Γ s vs callee v Γ1 st hP hvs hsh hT2 hinfo hq
    obtain ⟨hIV, hOF, hLL⟩ := hP
    obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 3) (by
      have := (shapeEqHOL_eq_true _ _).mp hsh
      exact (shapeEqHOL_eq_true _ _).mpr this)
    match ws, hws with
    | [a, b, c], _ =>
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [Mpt.Leaves.ev_lv' (hLL (nm "outer", .val (.word OW)) (by simp [psL]))] at ha1
    rw [Mpt.Leaves.ev_lv' (hLL (nm "i", .val (.word IW)) (by simp [psL]))] at ha2
    cases ha1; cases ha2
    obtain ⟨p, p', hp, hp', hm, hx, hnf⟩ := hinfo
    have hOF1 := of_ext hx hOF
    obtain ⟨To', hTo', hTo'b, hTo't⟩ := hOF1.1
    refine ⟨⟨hOF1, fun pp hpp => ?_⟩, a, b, c, lk_set_self _ _ _, fun ha => ?_⟩
    · exact (lk_set_ne _ _ (psL_ne OW BW CW IW (x := nm "s") ⟨by decide, by decide, by decide, by decide⟩ pp hpp).symm).trans (hLL pp hpp)
    · have hq' := hq (wv [a, b, c]) rfl a b c rfl ha To' hTo' (by simp [hTo'b]) (by rw [hTo't]; exact hkOf_of_tab (by decide))
        (by rw [hTo't]; decide)
      refine ⟨hq'.2 20 tHTbt20 (by rw [hTo't]; decide) (by rw [hTo't]; decide), ?_⟩
      have := hq'.1
      rw [hTo't] at this
      exact this
  · rintro Γ t o ⟨hOF, CW', IW', hLL⟩
    exact ⟨hOF, CW', IW', ll_res hLL (psL_ne OW BW CW' IW' (x := nm "s") ⟨by decide, by decide, by decide, by decide⟩) o⟩

theorem ll_set_i {OW BW CW IW : BitVec 64} {Γ : Gam} {t : State σ} (h : LL (psL OW BW CW IW) Γ t)
    (IW' : BitVec 64) : LL (psL OW BW CW IW') Γ (setVarHOLFinite (nm "i") (.val (.word IW')) t) := by
  intro p hp
  simp only [psL, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl
  · exact (lk_set_ne _ _ (show nm "i" ≠ nm "outer" by decide)).trans (h (nm "outer", .val (.word OW)) (by simp [psL]))
  · exact (lk_set_ne _ _ (show nm "i" ≠ nm "bouter" by decide)).trans (h (nm "bouter", .val (.word BW)) (by simp [psL]))
  · exact (lk_set_ne _ _ (show nm "i" ≠ nm "cap" by decide)).trans (h (nm "cap", .val (.word CW)) (by simp [psL]))
  · exact lk_set_self _ _ _

def psA (OW BW CW IW a b c : BitVec 64) : List (MlS × ValueHOL 64) :=
  psL OW BW CW IW ++ [(nm "s", wv [a, b, c])]
def psB (OW BW CW IW a b c ma mb : BitVec 64) : List (MlS × ValueHOL 64) :=
  psA OW BW CW IW a b c ++ [(nm "m", wv [ma, mb])]
def psC (OW BW CW IW a b c ma mb BN : BitVec 64) : List (MlS × ValueHOL 64) :=
  psB OW BW CW IW a b c ma mb ++ [(nm "binner", .val (.word BN))]

def FctA (OW BW b c : BitVec 64) (Γ : Gam) : Prop :=
  OF OW BW Γ ∧ SrcKey Γ b 20 tHTbt20 ∧ Fits Γ (.ptr tHTh32) c
def FctB (OW BW b c ma mb : BitVec 64) (Γ : Gam) : Prop :=
  FctA OW BW b c Γ ∧ (ma ≠ 0 → Fits Γ (.ptr tHTb32) mb)
def FctC (OW BW b c ma mb BN : BitVec 64) (Γ : Gam) : Prop :=
  FctB OW BW b c ma mb Γ ∧ Fits Γ (.ptr tHTb32) BN

theorem fctA_ext {OW BW b c : BitVec 64} {Γ Γ1 : Gam} (hx : Ext Γ Γ1) (h : FctA OW BW b c Γ) :
    FctA OW BW b c Γ1 := ⟨of_ext hx h.1, srcKey_ext hx h.2.1, fits_ext hx h.2.2⟩
theorem fctB_ext {OW BW b c ma mb : BitVec 64} {Γ Γ1 : Gam} (hx : Ext Γ Γ1) (h : FctB OW BW b c ma mb Γ) :
    FctB OW BW b c ma mb Γ1 := ⟨fctA_ext hx h.1, fun ha => fits_ext hx (h.2 ha)⟩
theorem fctC_ext {OW BW b c ma mb BN : BitVec 64} {Γ Γ1 : Gam} (hx : Ext Γ Γ1) (h : FctC OW BW b c ma mb BN Γ) :
    FctC OW BW b c ma mb BN Γ1 := ⟨fctB_ext hx h.1, fits_ext hx h.2⟩

theorem ll_mono {ps ps' : List (MlS × ValueHOL 64)} {Γ : Gam} {t : State σ} (h : LL ps Γ t)
    (hs : ∀ p ∈ ps', p ∈ ps) : LL ps' Γ t := fun p hp => h p (hs p hp)

def LD (OW BW CW IW a b c ma mb : BitVec 64) (Γ : Gam) (t : State σ) : Prop :=
  ∃ BN, LL (psC OW BW CW IW a b c ma mb BN) Γ t ∧ FctC OW BW b c ma mb BN Γ

theorem setSigK_noBuf (th : Nat) : ∀ pt ∈ (setSigK th).params, (∀ n, pt ≠ PT.buf n) ∧ ∀ j c d, pt ≠ PT.bufArg j c d := by
  intro pt hpt
  simp only [setSigK, List.mem_cons, List.not_mem_nil, or_false] at hpt
  rcases hpt with rfl | rfl | rfl
  · exact ⟨fun n => by simp, fun j c d => by simp⟩
  · exact ⟨fun n => by simp, fun j c d => by simp⟩
  · exact ⟨fun n => valPT_ne_buf th n, fun j c d => valPT_ne_bufArg th j c d⟩

theorem mg_union3 (E : MgEnt Γ0 s0 p0 BB TB) {OW BW CW IW a b c ma mb : BitVec 64} :
    HoareG σ guestCtx (fun s => ∃ Γ, PI mgc Γ0 s0 p0 (LD OW BW CW IW a b c ma mb) Γ s)
      (callD (nm "htab_union_into") [lv (nm "binner"), .rfield 2 (lv (nm "s"))])
      (RR mgc Γ0 s0 p0 (LD OW BW CW IW a b c ma mb)) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  refine gstepD hH (sumSpec_htab_union_into2 hF guestHooksR_mono htabHooks_guestR (th := tHTb32) (ts := tHTh32)
    (by decide) (by decide) (by decide) (by decide) (by decide)) (by decide_cbv)
    (fun g _ => by simp [unionSig2]) E.hord E.hL ?_ ?_
  · intro Γ s ⟨hIV, BN, hLL, hFc⟩ vs hvs callee
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [Mpt.Leaves.ev_lv' (hLL (nm "binner", .val (.word BN)) (by simp [psC]))] at ha1
    cases ha1
    have hx : ev s (.rfield 2 (lv (nm "s"))) = some (.val (.word c)) :=
      ev_rfield_wv (ws := [a, b, c]) (by rw [ev_lv]; exact hLL (nm "s", wv [a, b, c]) (by simp [psC, psB, psA])) (i := 2) (by simp)
    rw [hx] at ha2
    cases ha2
    obtain ⟨pT, hpT, -⟩ := id hIV.1
    obtain ⟨X1, hX1, hX1b, hX1t⟩ := hFc.2
    obtain ⟨X2, hX2, hX2b, hX2t⟩ := hFc.1.1.2.2
    exact ⟨⟨pT, hpT, argsOK2 ⟨_, rfl, X1, hX1, hX1b, hX1t⟩ ⟨_, rfl, X2, hX2, hX2b, hX2t⟩⟩, trivial,
      fun a h => absurd h (argCells_noBuf (by simp [unionSig2])),
      cpw_step (mgc_sub (Or.inr (Or.inr (Or.inr (Or.inr rfl))))) hIV.1 E.hord E.hL⟩
  · intro Γ s vs callee v Γ1 st hP hvs hT2 hinfo hq
    obtain ⟨hIV, BN, hLL, hFc⟩ := hP
    obtain ⟨p, p', hp, hp', hm, hx, hnf⟩ := hinfo
    exact ⟨BN, hLL, fctC_ext hx hFc⟩

theorem psC_mem_ne {OW BW CW IW a b c ma mb BN : BitVec 64} :
    ∀ p ∈ psB OW BW CW IW a b c ma mb, p.1 ≠ nm "binner" := by
  intro p hp h
  have hk : p.1 ∈ [nm "outer", nm "bouter", nm "cap", nm "i", nm "s", nm "m"] := by
    simp only [psB, psA, psL, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with ((rfl | rfl | rfl | rfl) | rfl) | rfl <;> simp
  rw [h] at hk
  revert hk
  decide

theorem ll_psC {OW BW CW IW a b c ma mb BN BN' : BitVec 64} {Γ : Gam} {t : State σ}
    (h : LL (psC OW BW CW IW a b c ma mb BN) Γ t) :
    LL (psC OW BW CW IW a b c ma mb BN') Γ (setVarHOLFinite (nm "binner") (.val (.word BN')) t) := by
  intro p hp
  simp only [psC, List.mem_append, List.mem_singleton] at hp
  rcases hp with hp | rfl
  · exact (lk_set_ne _ _ (psC_mem_ne (BN := BN) p hp).symm).trans
      (h p (by simp only [psC, List.mem_append]; exact Or.inl hp))
  · exact lk_set_self _ _ _

/-- The new block-table inner table is stored under the key. -/
theorem mg_set (E : MgEnt Γ0 s0 p0 BB TB) {OW BW CW IW a b c ma mb : BitVec 64} :
    HoareG σ guestCtx (fun s => ∃ Γ, PI mgc Γ0 s0 p0 (LD OW BW CW IW a b c ma mb) Γ s)
      (callD (nm "htab_set") [lv (nm "bouter"), .rfield 1 (lv (nm "s")), lv (nm "binner")])
      (RR mgc Γ0 s0 p0 (LD OW BW CW IW a b c ma mb)) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  refine gstepD hH (sumSpec_htab_set_k hF guestHooksR_mono htabHooks_guestR (th := tHTbt20) (by decide))
    (by decide_cbv) (fun g _ => by simp [setSigK]) E.hord E.hL ?_ ?_
  · intro Γ s ⟨hIV, BN, hLL, hFc⟩ vs hvs callee
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    rw [Mpt.Leaves.ev_lv' (hLL (nm "bouter", .val (.word BW)) (by simp [psC, psB, psA, psL]))] at ha1
    cases ha1
    have hx : ev s (.rfield 1 (lv (nm "s"))) = some (.val (.word b)) :=
      ev_rfield_wv (ws := [a, b, c]) (by rw [ev_lv]; exact hLL (nm "s", wv [a, b, c]) (by simp [psC, psB, psA])) (i := 1) (by simp)
    rw [hx] at ha2
    cases ha2
    rw [Mpt.Leaves.ev_lv' (hLL (nm "binner", .val (.word BN)) (by simp [psC]))] at ha3
    cases ha3
    obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := id hIV.1
    obtain ⟨qT, hqT, hordT, hLayT, hFlT, -, -, hW⟩ := hGT
    rw [hpT] at hqT
    cases hqT
    obtain ⟨Bo, hBo, hBob, hBot⟩ := hFc.1.1.1.2
    obtain ⟨Bn, hBn, hBnb, hBnt⟩ := hFc.2
    have hko : hkOf Bo.ty = .tab := by rw [hBot]; exact hkOf_of_tab (by decide)
    have hw : tabW Γ s Bo := htabHooks_guestR.get _ s Bo hko (hW Bo hBo)
    have hkl : htKL tHTbt20 = 20 := by decide
    have hko' : KeyOut s Bo.base b (htKL tHTbt20) pT.hp := by
      rw [hkl]; exact keyOut_of_srcKey hordT hLayT hw hko hBot hFc.1.1.2.1
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some pT := (Frames.ptrsOf_congr rfl).trans hpT
    have hvp : valPT tHTbt20 = .fits (.ptr tHTb32) := by decide
    refine ⟨⟨pT, hpT, argsOK3 ⟨_, rfl, Bo, hBo, hBob, hBot⟩ trivial (by rw [hvp]; exact ⟨_, rfl, Bn, hBn, hBnb, hBnt⟩)⟩,
      ⟨_, b, BN, rfl, pT, hpe, by rw [← hBob]; exact hko'⟩,
      fun a h => absurd h (argCells_noBuf (setSigK_noBuf tHTbt20)),
      cpw_step (mgc_sub (Or.inr (Or.inr (Or.inr (Or.inl rfl))))) hIV.1 E.hord E.hL⟩
  · intro Γ s vs callee v Γ1 st hP hvs hT2 hinfo hq
    obtain ⟨hIV, BN, hLL, hFc⟩ := hP
    obtain ⟨p, p', hp, hp', hm, hx, hnf⟩ := hinfo
    exact ⟨BN, hLL, fctC_ext hx hFc⟩

theorem mg_new (E : MgEnt Γ0 s0 p0 BB TB) {OW BW CW IW a b c ma mb : BitVec 64} :
    HoareG σ guestCtx (fun s => ∃ Γ, PI mgc Γ0 s0 p0 (fun Γ t => LL (psC OW BW CW IW a b c ma mb 0) Γ t ∧
        FctB OW BW b c ma mb Γ) Γ s) (.call (some (some (.local, nm "binner"), none)) (nm "htab_new") [cw 32, cw 8])
      (RR mgc Γ0 s0 p0 (LD OW BW CW IW a b c ma mb)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine gstepA hH (sa_of_cs (csumm_htab_new_ty (q := (32, 8)) (by decide) (th := tHTb32) (by decide)
    (by decide) (by decide))) (by decide_cbv) (fun g _ => by simp) E.hord E.hL
    (L := fun Γ t => LL (psC OW BW CW IW a b c ma mb 0) Γ t ∧ FctB OW BW b c ma mb Γ)
    (Ln := LD OW BW CW IW a b c ma mb) ?_ ?_ ?_
  · intro Γ s ⟨hIV, hLL, hFb⟩
    exact ⟨0, hLL (nm "binner", .val (.word 0)) (by simp [psC])⟩
  · intro Γ s ⟨hIV, hLL, hFb⟩ vs hvs callee
    rw [evs_cons (ev_cw _ 32) (evs_cons (ev_cw _ 8) evs_nil)] at hvs
    cases hvs
    obtain ⟨pT, hpT, -⟩ := id hIV.1
    exact ⟨⟨pT, hpT, argsOK_eq2⟩, (fun c hc => by cases hc), fun a h => absurd h argCells_eq2,
      fun y _ h => by obtain ⟨c, hc, -⟩ := h; cases hc⟩
  · intro Γ s vs callee w Γ1 st ⟨hIV, hLL, hFb⟩ hvs hT2 hinfo hq hcore
    obtain ⟨p1, p2, hcore⟩ := hcore
    have hfit : Fits Γ1 (.ptr tHTb32) w :=
      hcore.2.2.2.2.2.2.2.2.2 (.val (.word w)) rfl 0 (.fits (.ptr tHTb32)) w (by simp) (by simp [flattenHOL])
    obtain ⟨p, p', hp, hp', hm, hx, hnf⟩ := hinfo
    exact ⟨w, ll_psC hLL, fctB_ext hx hFb, hfit⟩

theorem mg_bin (E : MgEnt Γ0 s0 p0 BB TB) {OW BW CW IW a b c ma mb : BitVec 64} :
    HoareG σ guestCtx (fun s => ∃ Γ, PI mgc Γ0 s0 p0 (fun Γ t => LL (psC OW BW CW IW a b c ma mb 0) Γ t ∧
        FctB OW BW b c ma mb Γ) Γ s) mgBin (RR mgc Γ0 s0 p0 (LD OW BW CW IW a b c ma mb)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold mgBin
  refine hoareG_ite ?_ ?_
  · exact hoareG_pre (hseqR2 (L := LD OW BW CW IW a b c ma mb) (cs := mgc) (mg_new E) (mg_set E))
      (fun t _ h => h.1)
  · refine hoareG_assignK fun s hs ⟨⟨Γ, hIV, hLL, hFb⟩, hc⟩ v hv hvalid => ?_
    have hx : ev s (.rfield 1 (lv (nm "m"))) = some (.val (.word mb)) :=
      ev_rfield_wv (ws := [ma, mb]) (by rw [ev_lv]; exact hLL (nm "m", wv [ma, mb]) (by simp [psC, psB])) (i := 1) (by simp)
    rw [hx] at hv
    cases hv
    have hma : ma ≠ 0 := by
      obtain ⟨x, y, hx', hy', hxy⟩ := cmp_false hc
      have e1 : x = ma := by
        have := hx'.symm.trans (ev_rfield_wv (ws := [ma, mb]) (by rw [ev_lv]; exact hLL (nm "m", wv [ma, mb]) (by simp [psC, psB])) (i := 0) (by simp))
        simpa using this
      rw [ev_cw] at hy'
      have e2 : y = 0 := by have := hy'.symm; simpa using this
      intro h0
      rw [← e1] at h0
      rw [h0, e2] at hxy
      simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hxy
    exact Or.inl ⟨rfl, Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, mb, ll_psC hLL, hFb, hFb.2 hma⟩

def LB (OW BW CW IW a b c ma mb : BitVec 64) (Γ : Gam) (t : State σ) : Prop :=
  LL (psB OW BW CW IW a b c ma mb) Γ t ∧ FctB OW BW b c ma mb Γ

theorem mg_dec (E : MgEnt Γ0 s0 p0 BB TB) {OW BW CW IW a b c ma mb : BitVec 64} :
    HoareG σ guestCtx (fun s => ∃ Γ, PI mgc Γ0 s0 p0 (LB OW BW CW IW a b c ma mb) Γ s)
      (.dec (nm "binner") .one (cw 0) (.seq mgBin (callD (nm "htab_union_into") [lv (nm "binner"), .rfield 2 (lv (nm "s"))])))
      (RR mgc Γ0 s0 p0 (LB OW BW CW IW a b c ma mb)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine hoareG_dec fun s hs ⟨Γ, hIV, hLL, hFb⟩ v hv hsh => ?_
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (P := fun t => t = setVarHOLFinite (nm "binner") (.val (.word (BitVec.ofNat 64 0))) s) ?_
    (fun _ _ h => h) (fun r t _ _ hq => rr_res (L := LD OW BW CW IW a b c ma mb) ?_ hH _ hq)
  · refine hoareG_pre (hseqR2 (P := fun Γ t => PI mgc Γ0 s0 p0 (fun Γ t => LL (psC OW BW CW IW a b c ma mb 0) Γ t ∧
        FctB OW BW b c ma mb Γ) Γ t) (cs := mgc) (L := LD OW BW CW IW a b c ma mb) (mg_bin E) (mg_union3 E))
      (fun t _ ht => ?_)
    subst ht
    refine ⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, ?_, hFb⟩
    intro p hp
    simp only [psC, List.mem_append, List.mem_singleton] at hp
    rcases hp with hp | rfl
    · exact (lk_set_ne _ _ (psC_mem_ne (BN := 0) p hp).symm).trans (hLL p hp)
    · exact lk_set_self _ _ _
  · intro Γ t o ⟨BN, hLL', hFc⟩
    refine ⟨ll_res (ll_mono hLL' (fun p hp => by simp only [psC, List.mem_append]; exact Or.inl hp))
      (psC_mem_ne (BN := 0)) o, hFc.1⟩

/-- `var m = htab_get(bouter, s.1); ...` inside the `then` branch. -/
theorem mg_then (E : MgEnt Γ0 s0 p0 BB TB) {OW BW CW IW a b c : BitVec 64} :
    HoareG σ guestCtx (fun s => ∃ Γ, PI mgc Γ0 s0 p0 (fun Γ t => L1 OW BW CW IW Γ t ∧
        t.locals.lookup (nm "s") = some (wv [a, b, c]) ∧ SrcKey Γ b 20 tHTbt20 ∧ Fits Γ (.ptr tHTh32) c) Γ s)
      mgThen (RR mgc Γ0 s0 p0 (LIt OW BW CW IW)) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  have hneG : NoExc σ guestCtx (nm "htab_get") := noExc_htabX hF.hX _ (by decide)
  unfold mgThen
  refine hoareG_decCall (FunSpec.and (FunSpec.and (funSpec_get_j (σ := σ) hF.hX) hneG)
    (funSpec_get_fits (σ := σ) (th := tHTbt20) (by decide))) ?_ ?_
  · intro s hs ⟨Γ, hIV, ⟨hOF, hLL⟩, hsv, hk, hf⟩ vs hvs callee v st ⟨⟨⟨hm, hgl, hd, hbe, hRet⟩, hne⟩, hFit⟩ hst hsh
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [Mpt.Leaves.ev_lv' (hLL (nm "bouter", .val (.word BW)) (by simp [psL]))] at ha1
    cases ha1
    have hx : ev s (.rfield 1 (lv (nm "s"))) = some (.val (.word b)) :=
      ev_rfield_wv (ws := [a, b, c]) (by rw [ev_lv]; exact hsv) (i := 1) (by simp)
    rw [hx] at ha2
    cases ha2
    obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) (by
      have := (shapeEqHOL_eq_true _ _).mp hsh
      exact (shapeEqHOL_eq_true _ _).mpr this)
    match ws, hws with
    | [ma, mb], _ =>
    have hgs : st.globals = s.globals := AllocImpl.hfm_ext (funext hgl)
    have hGe : G guestC (guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
      Struct.G_congr (s := s) hH rfl rfl rfl rfl (Struct.trk_G hIV.1)
    set u1 := setVarHOLFinite (nm "m") (wv [ma, mb]) { st with locals := s.locals } with hu1
    have hIV1 : IV mgc Γ0 s0 p0 Γ u1 :=
      ⟨Struct.trk_congr hH hIV.1 hm hgs hd hbe, fun g hg => by
        show st.globals.lookup g = _
        rw [hgs]; exact hIV.2 g hg⟩
    obtain ⟨Bo, hBo, hBob, hBot⟩ := hOF.2
    have hLL1 : LL (psB OW BW CW IW a b c ma mb) Γ u1 := by
      intro p hp
      simp only [psB, psA, List.mem_append, List.mem_singleton] at hp
      rcases hp with (hp | rfl) | rfl
      · exact (lk_set_ne _ _ (psL_ne OW BW CW IW (x := nm "m") ⟨by decide, by decide, by decide, by decide⟩ p hp).symm).trans (hLL p hp)
      · exact (lk_set_ne _ _ (show nm "m" ≠ nm "s" by decide)).trans hsv
      · exact lk_set_self _ _ _
    have hFb : FctB OW BW b c ma mb Γ := by
      refine ⟨⟨hOF, hk, hf⟩, fun ha0 => ?_⟩
      have hfit := hFit Γ hGe BW b rfl ⟨Bo, hBo, hBob, hBot⟩ _ rfl ma mb rfl ha0
      have hvk : valK tHTbt20 = .ptr tHTb32 := by decide
      rw [hvk] at hfit
      exact hfit
    refine hoareG_conseq (P := fun t => t = u1) ?_ (fun s _ h => h) (fun r t _ _ hq => rr_res (L := LB OW BW CW IW a b c ma mb) ?_ hH _ hq)
    · exact hoareG_pre (mg_dec E) (fun t _ ht => by subst ht; exact ⟨Γ, hIV1, hLL1, hFb⟩)
    · intro Γ' t o ⟨hLLt, hFbt⟩
      refine ⟨⟨hFbt.1.1, ll_res (ll_mono hLLt (fun p hp => by
          simp only [psB, psA, List.mem_append]; exact Or.inl (Or.inl hp)))
        (psL_ne OW BW CW IW (x := nm "m") ⟨by decide, by decide, by decide, by decide⟩) o⟩,
        a, b, c, ?_, fun _ => ⟨hFbt.1.2.1, hFbt.1.2.2⟩⟩
      show (t.locals.resVarEq (nm "m", o)).lookup (nm "s") = some (wv [a, b, c])
      rw [lk_resVar_ne _ _ _ _ (by decide)]
      exact hLLt (nm "s", wv [a, b, c]) (by simp [psB, psA])
  · intro s hs ⟨Γ, hIV, ⟨hOF, hLL⟩, hsv, hk, hf⟩ vs hvs callee r st ⟨⟨⟨hm, hgl, hd, hbe, hRet⟩, hne⟩, hFit⟩ hst habn
    rcases hne (abn_good habn) with ⟨v, hv⟩ | hab
    · exact absurd hv (Struct.abn_ne_ret habn v)
    · exact rr_ab r _ hab

theorem mg_k (E : MgEnt Γ0 s0 p0 BB TB) {OW BW CW IW : BitVec 64} :
    HoareG σ guestCtx (fun s => ∃ Γ, PI mgc Γ0 s0 p0 (LIt OW BW CW IW) Γ s)
      (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "s"))) (cw 0)) mgThen .skip)
        (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))
      (RR mgc Γ0 s0 p0 (Lloop OW BW)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine hseqR2 (L := LIt OW BW CW IW) (hoareG_ite (Q := RR mgc Γ0 s0 p0 (LIt OW BW CW IW)) ?_ ?_) ?_
  · intro s hs ⟨⟨Γ, hIV, hL1, a, b, c, hsv, himp⟩, w, hw, hw0⟩ hg
    have hx : ev s (.rfield 0 (lv (nm "s"))) = some (.val (.word a)) :=
      ev_rfield_wv (ws := [a, b, c]) (by rw [ev_lv]; exact hsv) (i := 0) (by simp)
    obtain ⟨x, y, hx', hy', hxy⟩ := cmp_true hw hw0
    have e1 : x = a := by have := hx'.symm.trans hx; simpa using this
    rw [ev_cw] at hy'
    have e2 : y = 0 := by have := hy'.symm; simpa using this
    have ha : a ≠ 0 := by
      intro h0
      have hx0 : x = 0 := by rw [e1]; exact h0
      rw [hx0, e2] at hxy
      simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hxy
    obtain ⟨hk, hf⟩ := himp ha
    exact mg_then E s hs ⟨Γ, hIV, hL1, hsv, hk, hf⟩ hg
  · exact hoareG_skip fun t _ ⟨hP, _⟩ => Or.inl ⟨rfl, hP⟩
  · refine hoareG_assignK fun s hs ⟨Γ, hIV, ⟨hOF, hLL⟩, hrest⟩ v hv hvalid => ?_
    rw [ev_add2 (Mpt.Leaves.ev_lv' (hLL (nm "i", .val (.word IW)) (by simp [psL]))) (ev_cw _ 1)] at hv
    cases hv
    exact Or.inl ⟨rfl, Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, hOF, CW, _,
      ll_set_i hLL _⟩

theorem mg_loop_body (E : MgEnt Γ0 s0 p0 BB TB) {OW BW : BitVec 64} :
    HoareG σ guestCtx (fun s => (∃ Γ, PI mgc Γ0 s0 p0 (Lloop OW BW) Γ s) ∧
      CondTrue s (.cmp .less (lv (nm "i")) (lv (nm "cap")))) mgLBody (RR mgc Γ0 s0 p0 (Lloop OW BW)) := by
  intro s hs hp hg
  obtain ⟨⟨Γ, hIV, hOF, CW, IW, hLL⟩, hc⟩ := hp
  exact (mg_item E (CW := CW) (IW := IW) (mg_k E)) s hs ⟨Γ, hIV, hOF, hLL⟩ (by unfold mgLBody at hg; exact hg)

theorem mg_loop (E : MgEnt Γ0 s0 p0 BB TB) {OW BW : BitVec 64} :
    HoareG σ guestCtx (fun s => ∃ Γ, PI mgc Γ0 s0 p0 (Lloop OW BW) Γ s) mgLoop (RR mgc Γ0 s0 p0 (Lloop OW BW)) := by
  unfold mgLoop
  refine gwhile (by decide) (fun Γ s h => h) (mg_loop_body E)


theorem mg_rest (E : MgEnt Γ0 s0 p0 BB TB) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI mgc Γ0 s0 p0 (fun _ _ => True) Γ s) mgRest (GQ4 mgc Γ0 s0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold mgRest
  refine hdec_gq hH fun s hs ⟨Γ, hIV, _⟩ v hv hsh => ?_
  have F := mg_facts E hIV
  obtain ⟨B, hB, hBb, hBt, hBs⟩ := F.B
  obtain ⟨T, hT, hTb, hTt, hTs⟩ := F.T
  have e1 := lp_ev_ld (ev_add2 (ev_gv F.gt) (ev_cw _ 32)) hv
  subst e1
  obtain ⟨To, hTo, hTob, hTot⟩ := slot_ptr (Struct.trk_G hIV.1) hT (k := 4) (by omega)
    (show (guestC.ty T.ty).slot 4 = .ptr tHTt20 by rw [hTt]; decide)
  rw [cell_eq_off T (k := 32) rfl, hTb] at hTob
  refine hdec_gq hH fun s1 hs1 hp1 v1 hv1 hsh1 => ?_
  subst hp1
  have e2 := lp_ev_ld (ev_add2 (ev_gv (g := nm "bs") (by exact F.gb)) (ev_cw _ 32)) hv1
  subst e2
  obtain ⟨Bo, hBo, hBob, hBot⟩ := slot_ptr (Struct.trk_G hIV.1) hB (k := 4) (by omega)
    (show (guestC.ty B.ty).slot 4 = .ptr tHTbt20 by rw [hBt]; decide)
  rw [cell_eq_off B (k := 32) rfl, hBb] at hBob
  refine hdec_gq hH fun s2 hs2 hp2 v2 hv2 hsh2 => ?_
  subst hp2
  have hout : (setVarHOLFinite (nm "bouter") (.val (.word (rd s.memory (BB + BitVec.ofNat 64 32))))
      (setVarHOLFinite (nm "outer") (.val (.word (rd s.memory (TB + BitVec.ofNat 64 32)))) s)).locals.lookup (nm "outer")
      = some (.val (.word (rd s.memory (TB + BitVec.ofNat 64 32)))) :=
    (lk_set_ne _ _ (by decide)).trans (lk_set_self _ _ _)
  have e3 := lp_ev_ld (ev_add2 (Mpt.Leaves.ev_lv' hout) (ev_cw _ 24)) hv2
  subst e3
  refine hdec_gq hH fun s3 hs3 hp3 v3 hv3 hsh3 => ?_
  subst hp3
  rw [ev_cw] at hv3
  cases hv3
  refine hoareG_pre (hseq (P := fun Γ t => PI mgc Γ0 s0 p0 (Lloop (rd s.memory (TB + BitVec.ofNat 64 32))
      (rd s.memory (BB + BitVec.ofNat 64 32))) Γ t) (L := Lloop (rd s.memory (TB + BitVec.ofNat 64 32))
      (rd s.memory (BB + BitVec.ofNat 64 32))) (mg_loop E) ?_) (fun t _ ht => ?_)
  · exact hoareG_return (P := fun t => ∃ Γ, PI mgc Γ0 s0 p0 (Lloop (rd s.memory (TB + BitVec.ofNat 64 32))
        (rd s.memory (BB + BitVec.ofNat 64 32))) Γ t)
      (fun t _ ⟨Γ, hIV', hL⟩ v hv => gq4_of_iv _ ⟨Struct.trk_congr hH hIV'.1 rfl rfl rfl rfl, hIV'.2⟩)
  · subst ht
    refine ⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, ⟨⟨To, hTo, hTob, hTot⟩, ⟨Bo, hBo, hBob, hBot⟩⟩,
      rd s.memory (rd s.memory (TB + BitVec.ofNat 64 32) + BitVec.ofNat 64 24), 0, ?_⟩
    intro p hp
    simp only [psL, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact (lk_set_ne _ _ (show nm "i" ≠ nm "outer" by decide)).trans ((lk_set_ne _ _ (show nm "cap" ≠ nm "outer" by decide)).trans hout)
    · exact (lk_set_ne _ _ (show nm "i" ≠ nm "bouter" by decide)).trans ((lk_set_ne _ _ (show nm "cap" ≠ nm "bouter" by decide)).trans
        (lk_set_self _ _ _ |>.trans (by rfl)))
    · exact (lk_set_ne _ _ (show nm "i" ≠ nm "cap" by decide)).trans (lk_set_self _ _ _)
    · exact lk_set_self _ _ _


theorem mg_hoare (E : MgEnt Γ0 s0 p0 BB TB) (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0)
    (hp0 : ptrsOf s0 = some p0) :
    HoareG σ guestCtx (fun u => u = s0) mgBody (GQ4 mgc Γ0 s0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold mgBody mgU
  refine hoareG_pre (hseq (L := fun _ _ => True) (mg_union E (j := 3) (th := tHTb52) (tt := tHTh52)
      (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)) ?_)
    (fun t _ ht => ?_)
  · refine hseq (L := fun _ _ => True) (mg_union E (j := 1) (th := tHTb20) (tt := tHTh20)
      (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)) ?_
    refine hseq (L := fun _ _ => True) (mg_union E (j := 5) (th := tHTb52) (tt := tHTh52)
      (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)) ?_
    refine hseq (L := fun _ _ => True) (mg_union E (j := 2) (th := tHTb20) (tt := tHTh20)
      (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)) ?_
    refine hseq (L := fun _ _ => True) (mg_union E (j := 6) (th := tHTbc32) (tt := tHTc32)
      (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)) ?_
    exact mg_rest E
  · subst ht
    exact ⟨Γ0, ⟨Struct.trk_refl hG0 hp0, fun g _ => rfl⟩, trivial⟩

def MgPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  vs = [] ∧ BsNN s Γ ∧ TsNN s Γ

/-- **`merge_tx_into_block()`**: with `bs`, `ts` non-null block / transaction state objects, merges the
transaction's tables into the block's (five `htab_union_into` pairs, a typed inner table per address).
Writes only block-table cells (`mgc`). -/
theorem sumSpec_merge_tx_into_block :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "merge_tx_into_block") biSig MgPre
      (fun _ s Γ a => CapPW mgc s Γ a) B4Post := by
  have hF := Rec.foldOK_guestR (σ := σ)
  intro vs body callee rs hl s0 hs hloc r hr hg hna Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, rfl⟩ := Struct.lookupCode_zero code_merge_tx_into_block hl'
  obtain ⟨-, ⟨B, hB, hBt, hBg⟩, ⟨T, hT, hTt, hTg⟩⟩ := hpre
  obtain ⟨p0, hp0, -⟩ := hargs
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have E : MgEnt Γ0 s0 p0 B.base T.base :=
    ⟨hord0, hL0, ⟨B, hB, rfl, hBt⟩, AllocImpl.lookup_of_gword hBg, ⟨T, hT, rfl, hTt⟩, AllocImpl.lookup_of_gword hTg⟩
  have H' := mg_hoare E hG0 hp0 s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at H'
  obtain ⟨hbl, Γ', hT'⟩ := H' r rfl hna
  obtain ⟨p', hc⟩ := Inc.trk_sumCoreA (sg := biSig)
    (PWs := fun a => ProtCell guestC Γ0 a ∧ CapPW mgc s0 Γ0 a)
    (vs := []) (r := r) (trk_cpw_down (by decide) hT') hp0 (fun h => by simp [biSig] at h)
    (fun p _ w' hw' i rt w'' hi hfl => by simp [biSig] at hi)
  exact ⟨Γ', p0, p', hc, fun v' hv' => by rw [hv'] at hr; exact hbl⟩

end mg2

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_merge_tx_into_block
