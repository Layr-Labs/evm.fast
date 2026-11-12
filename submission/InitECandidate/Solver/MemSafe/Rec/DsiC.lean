import InitECandidate.Solver.MemSafe.Rec.DsiD

set_option autoImplicit false

/-!
# `decode_stateless_input`: the witness offsets (`dsC`)

`wp`, `wlen`, the `while i < 3` loop storing three words into the offsets buffer (scalar cells),
`ssz_check_offsets(ssz_offs, 3, 12, wlen)` and the hand-off to `dsD`.
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
open InitECandidate.Solver.MemSafe.Node (NQ nq_of_abn nq_locals)

variable {σ : Type} {X : Ctx 64}

def LLoop (kv : List (MlS × BitVec 64)) (m : LocalsH) : Prop :=
  ∃ I : BitVec 64, I.toNat ≤ 3 ∧ LK ((nm "i", I) :: kv) m

def LLoopLt (kv : List (MlS × BitVec 64)) (m : LocalsH) : Prop :=
  ∃ I : BitVec 64, I.toNat < 3 ∧ LK ((nm "i", I) :: kv) m

/-- The loop body. -/
theorem ds_loop_body {a : Act σ} (ha : ActOK a X) (hCb : a.Cb = Types.guestC)
    {Ar : BitVec 64} {kv : List (MlS × BitVec 64)} (hwp : ∃ WP, (nm "wp", WP) ∈ kv)
    (hkv : ∀ q ∈ kv, q.1 ≠ nm "i") {Φ : Prop} {Bf : Option (BitVec 64)}
    (hov : ∀ pl, Bf = some pl → Overlap Ar.toNat 96 Ar) :
    HoareG σ X (fun s => DI a Ar 96 (LLoop kv) (EJ Φ Ar Bf CzT) s ∧ CondTrue s
      (.cmp .less (lv (nm "i")) (cw 3))) dsLoopBody (DQ a Ar 96 (LLoop kv) (EJ Φ Ar Bf CzT)) := by
  have hse : scratchEnd < 2 ^ 64 := by decide
  obtain ⟨WP, hWP⟩ := hwp
  refine hoareG_pre (P := DI a Ar 96 (LLoopLt kv) (EJ Φ Ar Bf CzT)) ?_ ?_
  swap
  · intro s hs ⟨hD, hc⟩
    obtain ⟨⟨I, hI, hk⟩, Γ, q, he, hh, hB, hn, hE⟩ := hD
    have hiv : ev s (lv (nm "i")) = some (.val (.word I)) := ev_lw (lk_get hk (by simp))
    have hlt := signed_lt (x := I) (y := BitVec.ofNat 64 3) (by omega) (by decide)
      (cmp_true hiv (ev_cw _ 3) hc)
    exact ⟨⟨I, by simpa using hlt, hk⟩, Γ, q, he, hh, hB, hn, hE⟩
  unfold dsLoopBody
  refine hoareG_seqDQ (E := EJ Φ Ar Bf CzT)
    (hoareG_stsDI' ha (E' := EJ Φ Ar Bf CzT) ?_ ?_ ?_) ?_
  · intro s hs' hL Γ q he hh hE w hw
    obtain ⟨I, hI, hk⟩ := hL
    obtain ⟨W', hW', h8, hb, hc⟩ := glob_at ha hh (g := nm "ssz_offs") (n := 32)
      (hCb ▸ scalarGlob_ssz_offs)
    have hiv : ev s (lv (nm "i")) = some (.val (.word I)) := ev_lw (lk_get hk (x := nm "i") (w := I) (by simp))
    rw [ev_add2 hW' (ev_mul2 hiv (ev_cw _ 8))] at hw
    cases hw
    rw [mul8 (by omega : I.toNat ≤ 4)]
    refine hc _ ?_
    have hwn : (W' + BitVec.ofNat 64 (8 * I.toNat)).toNat = W'.toNat + 8 * I.toNat :=
      cell_toNat64 (by omega) (by omega)
    exact ⟨by rw [hwn]; omega, by rw [hwn]; omega, by rw [hwn]; omega⟩
  · intro s _ _ v hv
    obtain ⟨w, hw, -⟩ := ev_le32 hv
    exact ⟨w, hw⟩
  · intro s Γ q w x mem hs' hL hw hv hrd hmem hov' hE
    obtain ⟨hΦ, ⟨W, hW, -⟩, hBk⟩ := hE
    refine ⟨hΦ, ⟨W, hW, trivial⟩, fun pl hpl => ?_⟩
    obtain ⟨e1, e2⟩ := hBk pl hpl
    refine ⟨?_, e2⟩
    rw [Hooks.rd_congr (hmem Ar (fun e => hov' (e ▸ hov pl hpl)))]; exact e1
  · refine hoareG_assignDI ha.hH ?_
    intro s hs' hL v hv
    obtain ⟨I, hI, hk⟩ := hL
    rw [ev_add2 (ev_lw (lk_get hk (x := nm "i") (w := I) (by simp))) (ev_cw _ 1)] at hv
    cases hv
    have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
    exact ⟨I + BitVec.ofNat 64 1, by omega,
      lk_set (s := s) (lk_sub hk (fun q hq => List.mem_cons_of_mem _ hq)) _ hkv⟩


def chkSig : Sig := ⟨[.any, .any, .any, .any], [], [], false⟩

theorem ds_C {a : Act σ} (ha : ActOK a X) (hX : X.code.lookup = guestCode)
    (hC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true)
    (hret : a.sg.ret = [.fits (.ptr tSI)])
    (hfail : CSumm σ X a.Cb a.H (nm "ssz_fail") sfSig [])
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False))
    (hchk : CSumm σ X a.Cb a.H (nm "ssz_check_offsets") chkSig [])
    (hdbl : CSumm σ X a.Cb a.H (nm "decode_bytes_list") dblSig [])
    {Ar : BitVec 64} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 96 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {P2 L2 O2 pl : BitVec 64} {Φ : Prop} (hobjW : ObjN a.Γ0 (P2 + O2).toNat (L2 - O2).toNat)
    (hWb : heapBase ≤ (P2 + O2).toNat) (hWe : (P2 + O2).toNat + (L2 - O2).toNat ≤ heapEnd) :
    HoareG σ X (DI a Ar 96 (LK [(nm "si", Ar), (nm "p", P2), (nm "len", L2), (nm "o_wit", O2)])
      (EJ Φ Ar (some pl) CzT)) dsC
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  have hse := heapEnd_lt64
  have hov : ∀ pl', (some pl : Option (BitVec 64)) = some pl' → Overlap Ar.toNat 96 Ar :=
    fun _ _ => ⟨hA8, by omega, by omega⟩
  unfold dsC
  refine hoareG_decDI ha.hH (L' := LK ((nm "wp", P2 + O2) :: [(nm "si", Ar), (nm "p", P2),
    (nm "len", L2), (nm "o_wit", O2)])) ?_ ?_
  · intro s _ hL v hv
    rw [ev_add2 (ev_lw (lk_get hL (x := nm "p") (w := P2) (by simp)))
      (ev_lw (lk_get hL (x := nm "o_wit") (w := O2) (by simp)))] at hv
    cases hv
    exact lk_set (s := s) hL _ (by nmne)
  refine hoareG_decDI ha.hH (L' := LK ((nm "wlen", L2 - O2) :: (nm "wp", P2 + O2) ::
    [(nm "si", Ar), (nm "p", P2), (nm "len", L2), (nm "o_wit", O2)])) ?_ ?_
  · intro s _ hL v hv
    rw [ev_sub2 (ev_lw (lk_get hL (x := nm "len") (w := L2) (by simp)))
      (ev_lw (lk_get hL (x := nm "o_wit") (w := O2) (by simp)))] at hv
    cases hv
    exact lk_set (s := s) hL _ (by nmne)
  refine hoareG_seqDI (hoareG_sFailDI ha hfail hfr (by simp [sfSig]) (by simp [sfSig])
    (by simp [sfSig])) ?_
  refine hoareG_decDI ha.hH (L' := LLoop ((nm "wlen", L2 - O2) :: (nm "wp", P2 + O2) ::
    [(nm "si", Ar), (nm "p", P2), (nm "len", L2), (nm "o_wit", O2)])) ?_ ?_
  · intro s _ hL v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨BitVec.ofNat 64 0, by simp, lk_set (s := s) hL _ (by nmne)⟩
  refine hoareG_seqDI (hoareG_whileDI ha.hH
    (Lx := LK ((nm "wlen", L2 - O2) :: (nm "wp", P2 + O2) ::
      [(nm "si", Ar), (nm "p", P2), (nm "len", L2), (nm "o_wit", O2)]))
    (ds_loop_body ha hCb (kv := (nm "wlen", L2 - O2) :: (nm "wp", P2 + O2) ::
      [(nm "si", Ar), (nm "p", P2), (nm "len", L2), (nm "o_wit", O2)])
      ⟨P2 + O2, by simp⟩ (by nmne) hov) ?_) ?_
  · intro s _ h _
    exact di_mono (fun m ⟨I, _, hk⟩ => lk_sub hk (fun q hq => List.mem_cons_of_mem _ hq))
      (fun _ _ _ _ h => h) h
  refine hoareG_seqDI (Ar := Ar) (n := 96) (E := EJ Φ Ar (some pl) (fun m W => CoOk m W (L2 - O2) 3))
    (L := LK ((nm "wlen", L2 - O2) :: (nm "wp", P2 + O2) ::
      [(nm "si", Ar), (nm "p", P2), (nm "len", L2), (nm "o_wit", O2)])) ?_ ?_
  · refine hoareG_callDI ha hchk (funSpec_ssz_check_offsetsN hX) (by simp [chkSig]) (by simp [chkSig])
      (by simp [chkSig]) ?_ ?_
    · intro s _ _ vs hvs
      have := evs_length hvs
      simp at this
      simp [chkSig, this]
    · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc co hB hE
      have h1 := ej_call ha hCb co hB hov hE
      obtain ⟨-, ⟨W, hW, -⟩, -⟩ := hE
      rw [evs_cons (show ev s (gv (nm "ssz_offs")) = some (.val (.word W)) from hW)
        (evs_cons (ev_cw _ 3) (evs_cons (ev_cw _ 12)
          (evs_cons (ev_lw (lk_get hL (x := nm "wlen") (w := L2 - O2) (by simp))) evs_nil)))] at hvs
      cases hvs
      obtain ⟨hm, hg, hco⟩ := hLc v rfl W (BitVec.ofNat 64 3) (BitVec.ofNat 64 12) (L2 - O2) rfl
        (by decide) (by decide)
      refine ⟨h1.1, ⟨W, by rw [hg]; exact hW, ?_⟩, h1.2.2⟩
      show CoOk st.memory W (L2 - O2) 3
      rw [hm]; exact hco
  · refine hoareG_pre (ds_D ha hX hC hCb hH hgr hret hdbl hs hA8 (WP := P2 + O2) (WL := L2 - O2)
      (pl := pl) (Φ := Φ) hobjW hWb hWe) ?_
    intro t _ h
    exact di_mono (fun m hm => lk_sub hm (by intro q hq; simp at hq ⊢; tauto))
      (fun _ _ _ _ h => h) h

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.ds_C
