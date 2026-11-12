import InitECandidate.Solver.MemSafe.Rec.DsiW
import InitECandidate.Solver.MemSafe.Rec.DsiCode
import InitECandidate.Solver.MemSafe.Rec.SplitTab

set_option autoImplicit false

/-!
# `decode_stateless_input`: the last stage (`dsD`)

Three offsets read from the offsets buffer, three `decode_bytes_list` calls with their six stores,
and `return si`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (tPL tSLA tSI)
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.Spec.Mpt.Dec (ev_rfield_w)
open InitECandidate.Solver.MemSafe.Node (NQ nq_of_abn nq_locals)

variable {σ : Type} {X : Ctx 64}

/-- `var x = lds (ssz_offs + off); k`: the value is the word at the buffer. -/
theorem ds_dec_ld {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {x : MlS} {ea : ExpHOL 64}
    {off : Nat} {L' : BitVec 64 → LocalsH → Prop} {E' : BitVec 64 → Gam → Ptrs → Mem → LocalsH → Prop}
    {k : ProgHOL 64} {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    (hea : ∀ (s : State σ) (W : BitVec 64), s.globals.lookup (nm "ssz_offs") = some (.val (.word W)) →
      ev s ea = some (.val (.word (W + BitVec.ofNat 64 off))))
    (hglob : ∀ Γ q m g, E Γ q m g → ∃ W : BitVec 64, g.lookup (nm "ssz_offs") = some (.val (.word W)))
    (hmain : ∀ (s : State σ), InCtx s X → L s.locals → ∀ (Γ : Gam) (q : Ptrs), Heap a Γ q s →
      E Γ q s.memory s.globals → ∀ W : BitVec 64,
        s.globals.lookup (nm "ssz_offs") = some (.val (.word W)) →
        L' (rd s.memory (W + BitVec.ofNat 64 off))
          (setVarHOLFinite x (.val (.word (rd s.memory (W + BitVec.ofNat 64 off)))) s).locals ∧
        E' (rd s.memory (W + BitVec.ofNat 64 off)) Γ q s.memory s.globals)
    (hk : ∀ w, HoareG σ X (DI a Ar n (L' w) (E' w)) k (NQ a Rv)) :
    HoareG σ X (DI a Ar n L E) (.dec x .one (.load .one ea) k) (NQ a Rv) := by
  refine hoareG_decDIE hH (L' := L') (E' := E') ?_ hk
  intro s hs hL Γ q hh hE v hv
  obtain ⟨W, hW⟩ := hglob _ _ _ _ hE
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [hea s W hW] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  have hm : s.memory (W + BitVec.ofNat 64 off) = .word (rd s.memory (W + BitVec.ofNat 64 off)) :=
    mem_rd' _ _
  rw [hm]
  exact ⟨_, rfl, hmain s hs hL Γ q hh hE W hW⟩

theorem ej_glob {Φ : Prop} {Ar : BitVec 64} {Bf : Option (BitVec 64)} {Cz : Mem → BitVec 64 → Prop}
    {Γ : Gam} {q : Ptrs} {m : Mem} {g : LocalsH} (h : EJ Φ Ar Bf Cz Γ q m g) :
    ∃ W : BitVec 64, g.lookup (nm "ssz_offs") = some (.val (.word W)) := by
  obtain ⟨-, ⟨W, hW, -⟩, -⟩ := h
  exact ⟨W, hW⟩

theorem hea_0 (s : State σ) (W : BitVec 64) (h : s.globals.lookup (nm "ssz_offs") = some (.val (.word W))) :
    ev s (gv (nm "ssz_offs")) = some (.val (.word (W + BitVec.ofNat 64 0))) := by
  rw [show ev s (gv (nm "ssz_offs")) = s.globals.lookup (nm "ssz_offs") from rfl, h]; simp

theorem hea_k (s : State σ) (W : BitVec 64) (k : Nat)
    (h : s.globals.lookup (nm "ssz_offs") = some (.val (.word W))) :
    ev s (.op .add [gv (nm "ssz_offs"), cw k]) = some (.val (.word (W + BitVec.ofNat 64 k))) :=
  ev_add2 (by rw [show ev s (gv (nm "ssz_offs")) = s.globals.lookup (nm "ssz_offs") from rfl, h])
    (ev_cw _ _)

theorem ds_dbl {a : Act σ} (ha : ActOK a X) (hCb : a.Cb = Types.guestC)
    (hdbl : CSumm σ X a.Cb a.H (nm "decode_bytes_list") dblSig [])
    {Ar : BitVec 64} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 96 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {kv : List (MlS × BitVec 64)} {Φ : Prop} {pl : BitVec 64} {xn : MlS}
    (hx : ∀ q ∈ kv, q.1 ≠ xn) (hsi : (nm "si", Ar) ∈ kv) {args : List (ExpHOL 64)}
    (hargs : args.length = 4) {ka kb : Nat} (hka8 : ka % 8 = 0) (hka : ka + 8 ≤ 96) (hka0 : ka ≠ 0)
    (hkb8 : kb % 8 = 0) (hkb : kb + 8 ≤ 96) (hkb0 : kb ≠ 0) {k : ProgHOL 64}
    {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    (hk : HoareG σ X (DI a Ar 96 (LK kv) (EJ Φ Ar (some pl) CzT)) k (NQ a Rv)) :
    HoareG σ X (DI a Ar 96 (LK kv) (EJ Φ Ar (some pl) CzT))
      (.decCall xn (.comb [.one, .one]) (nm "decode_bytes_list") args
        (.seq (.store (.op .add [lv (nm "si"), cw ka]) (.rfield 0 (lv xn)))
          (.seq (.store (.op .add [lv (nm "si"), cw kb]) (.rfield 1 (lv xn))) k))) (NQ a Rv) := by
  have hse := heapEnd_lt64
  have hov : ∀ pl', (some pl : Option (BitVec 64)) = some pl' → Overlap Ar.toNat 96 Ar :=
    fun _ _ => ⟨hA8, by omega, by omega⟩
  refine ds_call2 ha hCb hov hdbl (by simp [dblSig]) (by simp [dblSig]) (by simp [dblSig]) ?_ hx ?_
  · intro s _ _ vs hvs
    have := evs_length hvs
    simp [dblSig]; omega
  intro x y
  have hsi' : ∀ m, (fun m => LK kv m ∧ LS xn x y m) m → m.lookup (nm "si") = some (.val (.word Ar)) :=
    fun m hm => lk_get hm.1 hsi
  refine hoareG_seqDI (ds_st_keep ha hs.2 hka8 hka hka0 hsi' ?_) ?_
  · intro s _ hL v hv
    rw [ev_rfield_w hL.2 (i := 0) (w := x) rfl] at hv
    exact ⟨x, (Option.some.inj hv).symm⟩
  refine hoareG_seqDI (ds_st_keep ha hs.2 hkb8 hkb hkb0 hsi' ?_) ?_
  · intro s _ hL v hv
    rw [ev_rfield_w hL.2 (i := 1) (w := y) rfl] at hv
    exact ⟨y, (Option.some.inj hv).symm⟩
  exact hoareG_pre hk (fun t _ h => di_mono (fun m hm => hm.1) (fun _ _ _ _ h => h) h)

theorem co3_order {m : Mem} {W NL B1 B2 B3 : BitVec 64} (hco : CoOk m W NL 3)
    (e0 : rd m (W + BitVec.ofNat 64 (8 * 0)) = B1) (e1 : rd m (W + BitVec.ofNat 64 (8 * 1)) = B2)
    (e2 : rd m (W + BitVec.ofNat 64 (8 * 2)) = B3) :
    B1.toNat ≤ B2.toNat ∧ B2.toNat ≤ B3.toNat ∧ B3.toNat ≤ NL.toNat := by
  have h1 := hco 1 (by omega)
  have h2 := hco 2 (by omega)
  simp only [show (1 : Nat) - 1 = 0 from rfl, show (2 : Nat) - 1 = 1 from rfl] at h1 h2
  rw [e0, e1] at h1
  rw [e1, e2] at h2
  exact ⟨h1.2 (by omega), h2.2 (by omega), h2.1⟩

/-- Three offsets in order. -/
def PhiW (w0 w1 w2 WL : BitVec 64) : Prop :=
  w0.toNat ≤ w1.toNat ∧ w1.toNat ≤ w2.toNat ∧ w2.toNat ≤ WL.toNat

theorem ds_D {a : Act σ} (ha : ActOK a X) (hX : X.code.lookup = guestCode)
    (hC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true)
    (hret : a.sg.ret = [.fits (.ptr tSI)])
    (hdbl : CSumm σ X a.Cb a.H (nm "decode_bytes_list") dblSig [])
    {Ar : BitVec 64} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 96 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {WP WL pl : BitVec 64} {Φ : Prop} (hW : ObjN a.Γ0 WP.toNat WL.toNat)
    (hWb : heapBase ≤ WP.toNat) (hWe : WP.toNat + WL.toNat ≤ heapEnd) :
    HoareG σ X (DI a Ar 96 (LK [(nm "si", Ar), (nm "wp", WP), (nm "wlen", WL)])
      (EJ Φ Ar (some pl) (fun m W => CoOk m W WL 3))) dsD
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  have hse := heapEnd_lt64
  have hAr := hs.2
  unfold dsD
  refine ds_dec_ld ha.hH (off := 0)
    (L' := fun w => LK ((nm "w0", w) :: [(nm "si", Ar), (nm "wp", WP), (nm "wlen", WL)]))
    (E' := fun w => EJ Φ Ar (some pl) (fun m W => CoOk m W WL 3 ∧ rd m (W + BitVec.ofNat 64 0) = w))
    hea_0 (fun _ _ _ _ h => ej_glob h) ?_ ?_
  · intro s hs' hL Γ q hh hE W hW0
    obtain ⟨hΦ', ⟨W', hW', hco⟩, hBk⟩ := hE
    rw [hW0] at hW'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hW'
    subst hW'
    exact ⟨lk_set (s := s) hL _ (by nmne), hΦ', ⟨W, hW0, hco, rfl⟩, hBk⟩
  intro w0
  refine ds_dec_ld ha.hH (off := 8)
    (L' := fun w => LK ((nm "w1", w) :: (nm "w0", w0) :: [(nm "si", Ar), (nm "wp", WP), (nm "wlen", WL)]))
    (E' := fun w => EJ Φ Ar (some pl) (fun m W => CoOk m W WL 3 ∧ rd m (W + BitVec.ofNat 64 0) = w0 ∧
      rd m (W + BitVec.ofNat 64 8) = w))
    (fun s W h => hea_k s W 8 h) (fun _ _ _ _ h => ej_glob h) ?_ ?_
  · intro s hs' hL Γ q hh hE W hW0
    obtain ⟨hΦ', ⟨W', hW', hco, h0⟩, hBk⟩ := hE
    rw [hW0] at hW'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hW'
    subst hW'
    exact ⟨lk_set (s := s) hL _ (by nmne), hΦ', ⟨W, hW0, hco, h0, rfl⟩, hBk⟩
  intro w1
  refine ds_dec_ld ha.hH (off := 16)
    (L' := fun w => LK ((nm "w2", w) :: (nm "w1", w1) :: (nm "w0", w0) ::
      [(nm "si", Ar), (nm "wp", WP), (nm "wlen", WL)]))
    (E' := fun w => EJ (Φ ∧ PhiW w0 w1 w WL) Ar (some pl) CzT)
    (fun s W h => hea_k s W 16 h) (fun _ _ _ _ h => ej_glob h) ?_ ?_
  · intro s hs' hL Γ q hh hE W hW0
    obtain ⟨hΦ', ⟨W', hW', hco, h0, h1⟩, hBk⟩ := hE
    rw [hW0] at hW'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hW'
    subst hW'
    have hord := co3_order (B3 := rd s.memory (W + BitVec.ofNat 64 16)) hco h0 h1 rfl
    exact ⟨lk_set (s := s) hL _ (by nmne), ⟨hΦ', hord⟩, ⟨W, hW0, trivial⟩, hBk⟩
  intro w2
  refine hoareG_pre (P := DI a Ar 96 (LK ((nm "w2", w2) :: (nm "w1", w1) :: (nm "w0", w0) ::
      [(nm "si", Ar), (nm "wp", WP), (nm "wlen", WL)])) (EW (Φ ∧ PhiW w0 w1 w2 WL) Ar pl [] [])) ?_
    (fun t _ h => di_mono (fun _ h => h)
      (fun _ _ _ _ h => ⟨h, rk_nil _ _ _, fun _ he => by simp at he⟩) h)
  have hwin : ∀ {wa wb : BitVec 64}, wa.toNat ≤ wb.toNat → wb.toNat ≤ WL.toNat →
      ObjN a.Γ0 (WP + wa).toNat (wb - wa).toNat ∧ heapBase ≤ (WP + wa).toNat := by
    intro wa wb hab hbL
    have h := objN_win hW hWe hab hbL
    exact ⟨h.1, by rw [h.2.1]; omega⟩
  refine ds_dblW ha hX hC hCb hH hgr hdbl hs hA8 (xn := nm "st0") (by nmne) (by simp)
    (Pv := WP + w0) (Nv := w1 - w0)
    (fun s hL => ev_add2 (ev_lw (lk_get hL (x := nm "wp") (w := WP) (by simp)))
      (ev_lw (lk_get hL (x := nm "w0") (w := w0) (by simp))))
    (fun s hL => ev_sub2 (ev_lw (lk_get hL (x := nm "w1") (w := w1) (by simp)))
      (ev_lw (lk_get hL (x := nm "w0") (w := w0) (by simp))))
    (fun s _ => ⟨_, ev_cw _ _⟩) (fun s _ => ⟨_, ev_cw _ _⟩)
    (fun h => hwin h.2.1 (by have := h.2; unfold PhiW at this; omega))
    (ja := 5) (jb := 6) rfl rfl (by decide) (by decide) (by decide) (by decide) (by decide)
    (fun _ h => by simp at h) (fun _ h => by simp at h) ?_
  intro x0 y0
  refine ds_dblW ha hX hC hCb hH hgr hdbl hs hA8 (xn := nm "cd") (by nmne) (by simp)
    (Pv := WP + w1) (Nv := w2 - w1)
    (fun s hL => ev_add2 (ev_lw (lk_get hL (x := nm "wp") (w := WP) (by simp)))
      (ev_lw (lk_get hL (x := nm "w1") (w := w1) (by simp))))
    (fun s hL => ev_sub2 (ev_lw (lk_get hL (x := nm "w2") (w := w2) (by simp)))
      (ev_lw (lk_get hL (x := nm "w1") (w := w1) (by simp))))
    (fun s _ => ⟨_, ev_cw _ _⟩) (fun s _ => ⟨_, ev_cw _ _⟩)
    (fun h => hwin h.2.2.1 (by have := h.2; unfold PhiW at this; omega))
    (ja := 7) (jb := 8) rfl rfl (by decide) (by decide) (by decide) (by decide) (by decide)
    (by simp) (by simp) ?_
  intro x1 y1
  refine ds_dblW ha hX hC hCb hH hgr hdbl hs hA8 (xn := nm "hd") (by nmne) (by simp)
    (Pv := WP + w2) (Nv := WL - w2)
    (fun s hL => ev_add2 (ev_lw (lk_get hL (x := nm "wp") (w := WP) (by simp)))
      (ev_lw (lk_get hL (x := nm "w2") (w := w2) (by simp))))
    (fun s hL => ev_sub2 (ev_lw (lk_get hL (x := nm "wlen") (w := WL) (by simp)))
      (ev_lw (lk_get hL (x := nm "w2") (w := w2) (by simp))))
    (fun s _ => ⟨_, ev_cw _ _⟩) (fun s _ => ⟨_, ev_cw _ _⟩)
    (fun h => hwin h.2.2.2 le_rfl)
    (ja := 9) (jb := 10) rfl rfl (by decide) (by decide) (by decide) (by decide) (by decide)
    (by simp) (by simp) ?_
  intro x2 y2
  exact ds_retW ha hC hH hgr hret hs hA8 (fun m hm => lk_get hm (by simp))
    (A0 := x0) (N0 := y0) (A1 := x1) (N1 := y1) (by simp) (by simp) (by simp) (by simp)
    (by simp) (by simp)
    (fun h => ⟨(hwin h.2.1 (by have := h.2; unfold PhiW at this; omega)).1,
      (hwin h.2.2.1 (by have := h.2; unfold PhiW at this; omega)).1⟩)

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.ds_D
