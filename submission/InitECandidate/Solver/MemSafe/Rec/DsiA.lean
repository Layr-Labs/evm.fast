import InitECandidate.Solver.MemSafe.Rec.DsiB

set_option autoImplicit false

/-!
# `decode_stateless_input`: the inner container offsets (`dsA`)

`st si + 88`, `np`, `nlen`, the three offsets of the inner container, their stores into the offsets
buffer and `ssz_check_offsets(ssz_offs, 3, 44, nlen)`; the ordering `B1 ≤ B2 ≤ B3 ≤ nlen` it
establishes is what `decode_payload`'s precondition needs.
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

theorem ej_mono {Φ Φ' : Prop} (h : Φ → Φ') {Ar : BitVec 64} {Bf : Option (BitVec 64)}
    {Cz : Mem → BitVec 64 → Prop} {Γ : Gam} {q : Ptrs} {m : Mem} {g : LocalsH}
    (hE : EJ Φ Ar Bf Cz Γ q m g) : EJ Φ' Ar Bf Cz Γ q m g :=
  ⟨h hE.1, hE.2.1, hE.2.2⟩

/-- A store of the local `xn` into the cell `j` of the offsets buffer. -/
theorem ds_so {a : Act σ} (ha : ActOK a X) (hCb : a.Cb = Types.guestC) {Ar : BitVec 64}
    {kv : List (MlS × BitVec 64)} {Φ : Prop} {ks : List (Nat × BitVec 64)} {j : Nat} (hj : j < 4)
    (hks : ∀ q ∈ ks, q.1 ≠ j) (hks4 : ∀ q ∈ ks, q.1 < 4) {ea : ExpHOL 64}
    (hea : ∀ (s : State σ) (W : BitVec 64), s.globals.lookup (nm "ssz_offs") = some (.val (.word W)) →
      ev s ea = some (.val (.word (W + BitVec.ofNat 64 (8 * j))))) {xn : MlS} {x : BitVec 64}
    (hx : (xn, x) ∈ kv) :
    HoareG σ X (DI a Ar 96 (LK kv) (EJ Φ Ar none (CzK ks))) (.store ea (lv xn))
      (DQ a Ar 96 (LK kv) (EJ Φ Ar none (CzK ((j, x) :: ks)))) := by
  have hse : scratchEnd < 2 ^ 64 := by decide
  refine hoareG_stsDI' ha ?_ ?_ ?_
  · intro s hs' hL Γ q he hh hE w hw
    obtain ⟨W', hW', h8, hb, hc⟩ := glob_at ha hh (g := nm "ssz_offs") (n := 32)
      (hCb ▸ scalarGlob_ssz_offs)
    rw [hea s W' hW'] at hw
    cases hw
    have hwn : (W' + BitVec.ofNat 64 (8 * j)).toNat = W'.toNat + 8 * j :=
      cell_toNat64 (by omega) (by omega)
    exact hc _ ⟨by rw [hwn]; omega, by rw [hwn]; omega, by rw [hwn]; omega⟩
  · intro s _ hL v hv
    rw [ev_lw (lk_get hL hx)] at hv
    exact ⟨x, (Option.some.inj hv).symm⟩
  · intro s Γ q w x' mem hs' hL hw hv hrd hmem hov' hE
    obtain ⟨hΦ, ⟨W, hW, hCz⟩, hBk⟩ := hE
    rw [hea s W hW] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    subst hw
    rw [ev_lw (lk_get hL hx)] at hv
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
    subst hv
    refine ⟨hΦ, ⟨W, hW, ?_⟩, fun pl hpl => by cases hpl⟩
    intro kv' hkv'
    rcases List.mem_cons.mp hkv' with rfl | hkv'
    · exact hrd
    · rw [Hooks.rd_congr (hmem _ (cell_ne8 (by have := hks4 _ hkv'; omega) (by omega) (fun e => hks _ hkv' (by omega))))]
      exact hCz _ hkv'


def PhiA (P2 L2 O1 O2 : BitVec 64) : Prop :=
  (heapBase ≤ P2.toNat ∧ P2.toNat + L2.toNat ≤ heapEnd) ∧ O1.toNat ≤ O2.toNat ∧ O2.toNat ≤ L2.toNat

theorem ej_czK0 {Φ : Prop} {Ar : BitVec 64} {Bf : Option (BitVec 64)} {Γ : Gam} {q : Ptrs}
    {m : Mem} {g : LocalsH} (h : EJ Φ Ar Bf CzT Γ q m g) : EJ Φ Ar Bf (CzK []) Γ q m g := by
  obtain ⟨h1, ⟨W, hW, -⟩, h3⟩ := h
  exact ⟨h1, ⟨W, hW, fun kv hkv => by cases hkv⟩, h3⟩

def kvA0 (Ar P2 L2 O1 O2 : BitVec 64) : List (MlS × BitVec 64) :=
  [(nm "si", Ar), (nm "p", P2), (nm "len", L2), (nm "o_npr", O1), (nm "o_wit", O2)]

def kvA2 (Ar P2 L2 O1 O2 : BitVec 64) : List (MlS × BitVec 64) :=
  (nm "nlen", O2 - O1) :: (nm "np", P2 + O1) :: kvA0 Ar P2 L2 O1 O2

theorem ds_A {a : Act σ} (ha : ActOK a X) (hX : X.code.lookup = guestCode)
    (hC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true)
    (hret : a.sg.ret = [.fits (.ptr tSI)])
    (hpay : SumSpecA σ X a.Cb a.H (nm "decode_payload") dpSig DpPre (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True))
    (hsfc : CSumm σ X a.Cb a.H (nm "ssz_fixed_list_count") sfcSig [])
    (hreq : CSumm σ X a.Cb a.H (nm "decode_requests") reqSig [])
    (hfail : CSumm σ X a.Cb a.H (nm "ssz_fail") sfSig [])
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False))
    (hchk : CSumm σ X a.Cb a.H (nm "ssz_check_offsets") chkSig [])
    (hdbl : CSumm σ X a.Cb a.H (nm "decode_bytes_list") dblSig [])
    {Ar : BitVec 64} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 96 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {P2 L2 O1 O2 : BitVec 64} (hobj2 : ObjN a.Γ0 P2.toNat L2.toNat) (hΦA : PhiA P2 L2 O1 O2) :
    HoareG σ X (DI a Ar 96 (LK [(nm "si", Ar), (nm "p", P2), (nm "len", L2), (nm "o_npr", O1),
      (nm "o_wit", O2)]) (EJ (PhiA P2 L2 O1 O2) Ar none CzT)) dsA
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  have hse := heapEnd_lt64
  have hov0 : ∀ pl', (none : Option (BitVec 64)) = some pl' → Overlap Ar.toNat 96 Ar :=
    fun _ h => by cases h
  obtain ⟨⟨hPb2, hPe2⟩, hO12, hO2L⟩ := id hΦA
  have hNP := objN_win hobj2 hPe2 hO12 hO2L
  have hWW := objN_win hobj2 hPe2 hO2L (le_refl L2.toNat)
  unfold dsA
  have hsi0 : ∀ m, LK [(nm "si", Ar), (nm "p", P2), (nm "len", L2), (nm "o_npr", O1),
      (nm "o_wit", O2)] m → m.lookup (nm "si") = some (.val (.word Ar)) :=
    fun m hm => lk_get hm (x := nm "si") (w := Ar) (by simp)
  refine hoareG_seqDI (ds_st_keep ha hs.2 (by decide) (by decide) (by decide) hsi0
    (fun s _ _ v hv => ev_op_word hv)) ?_
  refine hoareG_decDI ha.hH (L' := LK ((nm "np", P2 + O1) :: kvA0 Ar P2 L2 O1 O2)) ?_ ?_
  · intro s _ hL v hv
    rw [ev_add2 (ev_lw (lk_get hL (x := nm "p") (w := P2) (by simp)))
      (ev_lw (lk_get hL (x := nm "o_npr") (w := O1) (by simp)))] at hv
    cases hv
    exact lk_set (s := s) hL _ (by nmne)
  refine hoareG_decDI ha.hH (L' := LK (kvA2 Ar P2 L2 O1 O2)) ?_ ?_
  · intro s _ hL v hv
    rw [ev_sub2 (ev_lw (lk_get hL (x := nm "o_wit") (w := O2) (by simp [kvA0])))
      (ev_lw (lk_get hL (x := nm "o_npr") (w := O1) (by simp [kvA0])))] at hv
    cases hv
    exact lk_set (s := s) hL _ (by simp only [kvA0]; nmne)
  refine hoareG_seqDI (hoareG_sFailDI ha hfail hfr (by simp [sfSig]) (by simp [sfSig])
    (by simp [sfSig])) ?_
  refine hoareG_decDIE ha.hH (L' := fun w => LK ((nm "o_pl", w) :: kvA2 Ar P2 L2 O1 O2))
    (E' := fun _ => EJ (PhiA P2 L2 O1 O2) Ar none CzT) ?_ ?_
  · intro s _ hL Γ q hh hE v hv
    obtain ⟨w, hw, -⟩ := ev_le32 hv
    subst hw
    exact ⟨w, rfl, lk_set (s := s) hL w (by simp only [kvA2, kvA0]; nmne), hE⟩
  intro B1
  refine hoareG_decDIE ha.hH (L' := fun w => LK ((nm "o_vh", w) :: (nm "o_pl", B1) :: kvA2 Ar P2 L2 O1 O2))
    (E' := fun _ => EJ (PhiA P2 L2 O1 O2) Ar none CzT) ?_ ?_
  · intro s _ hL Γ q hh hE v hv
    obtain ⟨w, hw, -⟩ := ev_le32 hv
    subst hw
    exact ⟨w, rfl, lk_set (s := s) hL w (by simp only [kvA2, kvA0]; nmne), hE⟩
  intro B2
  refine hoareG_decDIE ha.hH (L' := fun w => LK ((nm "o_rq", w) :: (nm "o_vh", B2) :: (nm "o_pl", B1) ::
      kvA2 Ar P2 L2 O1 O2))
    (E' := fun _ => EJ (PhiA P2 L2 O1 O2) Ar none CzT) ?_ ?_
  · intro s _ hL Γ q hh hE v hv
    obtain ⟨w, hw, -⟩ := ev_le32 hv
    subst hw
    exact ⟨w, rfl, lk_set (s := s) hL w (by simp only [kvA2, kvA0]; nmne), hE⟩
  intro B3
  refine hoareG_pre (P := DI a Ar 96 (LK ((nm "o_rq", B3) :: (nm "o_vh", B2) :: (nm "o_pl", B1) ::
      kvA2 Ar P2 L2 O1 O2)) (EJ (PhiA P2 L2 O1 O2) Ar none (CzK []))) ?_
    (fun t _ h => di_mono (fun _ h => h) (fun _ _ _ _ h => ej_czK0 h) h)
  refine hoareG_seqDI (ds_so ha hCb (j := 0) (by decide) (by simp) (by simp) (ea := gv (nm "ssz_offs"))
    (fun s W h => hea_0 s W h) (xn := nm "o_pl") (x := B1) (by simp [kvA2, kvA0])) ?_
  refine hoareG_seqDI (ds_so ha hCb (j := 1) (by decide) (by simp) (by simp)
    (ea := .op .add [gv (nm "ssz_offs"), cw 8]) (fun s W h => hea_k s W 8 h) (xn := nm "o_vh")
    (x := B2) (by simp [kvA2, kvA0])) ?_
  refine hoareG_seqDI (ds_so ha hCb (j := 2) (by decide) (by simp) (by simp)
    (ea := .op .add [gv (nm "ssz_offs"), cw 16]) (fun s W h => hea_k s W 16 h) (xn := nm "o_rq")
    (x := B3) (by simp [kvA2, kvA0])) ?_
  refine hoareG_seqDI (Ar := Ar) (n := 96)
    (E := EJ (PhiB (P2 + O1) (O2 - O1) B1 B2 B3) Ar none CzT)
    (L := LK ((nm "o_rq", B3) :: (nm "o_vh", B2) :: (nm "o_pl", B1) :: kvA2 Ar P2 L2 O1 O2)) ?_ ?_
  · refine hoareG_callDI ha hchk (funSpec_ssz_check_offsetsN hX) (by simp [chkSig]) (by simp [chkSig])
      (by simp [chkSig]) ?_ ?_
    · intro s _ _ vs hvs
      have := evs_length hvs
      simp at this
      simp [chkSig, this]
    · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc co hB hE
      obtain ⟨hΦ, ⟨W, hW, hCz⟩, hBk⟩ := hE
      rw [evs_cons (show ev s (gv (nm "ssz_offs")) = some (.val (.word W)) from hW) (evs_cons (ev_cw _ 3) (evs_cons (ev_cw _ 44)
        (evs_cons (ev_lw (lk_get hL (x := nm "nlen") (w := O2 - O1) (by simp [kvA2])))
          evs_nil)))] at hvs
      cases hvs
      obtain ⟨-, -, hco⟩ := hLc v rfl W (BitVec.ofNat 64 3) (BitVec.ofNat 64 44) (O2 - O1) rfl
        (by decide) (by decide)
      have hord := co3_order (m := s.memory) hco (hCz (0, B1) (by simp)) (hCz (1, B2) (by simp))
        (hCz (2, B3) (by simp))
      obtain ⟨⟨hb, hsum⟩, h12, h2L⟩ := hΦ
      refine ej_mono (fun _ => ?_) (ej_call ha hCb co hB hov0
        (Φ := PhiA P2 L2 O1 O2) ⟨⟨⟨hb, hsum⟩, h12, h2L⟩, ⟨W, hW, hCz⟩, hBk⟩)
      have hNL : (O2 - O1).toNat = O2.toNat - O1.toNat := by rw [BitVec.toNat_sub]; omega
      have hNP : (P2 + O1).toNat = P2.toNat + O1.toNat := by
        rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt (by omega)
      have hord' : B1.toNat ≤ B2.toNat ∧ B2.toNat ≤ B3.toNat ∧ B3.toNat ≤ (O2 - O1).toNat := hord
      exact ⟨⟨by omega, by omega⟩, hord'.1, hord'.2.1, hord'.2.2⟩
  · refine hoareG_pre (ds_B ha hX hC hCb hH hgr hret hpay hsfc hreq hfail hfr hchk hdbl hs hA8
      (NP := P2 + O1) (NL := O2 - O1) (B1 := B1) (B2 := B2) (B3 := B3) (P2 := P2) (L2 := L2)
      (O2 := O2) hNP.1 hWW.1 (by rw [hWW.2.1]; omega) (by rw [hWW.2.1, hWW.2.2]; omega)) ?_
    intro t _ h
    exact di_mono (fun m hm => lk_sub hm (by
      intro q hq
      simp only [kvB, List.mem_cons, List.not_mem_nil, or_false] at hq
      simp only [kvA2, kvA0, List.mem_cons, List.not_mem_nil, or_false]
      rcases hq with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> simp))
      (fun _ _ _ _ h => h) h

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.ds_A
