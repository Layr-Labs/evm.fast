import InitECandidate.Solver.MemSafe.Rec.DsiA

set_option autoImplicit false

/-!
# `decode_stateless_input`: the entry (`dsBody`) up to the allocation of `si`

Everything before `alloc(96)`: the two header checks (the first yields `2 ≤ len`), `p`/`len`
adjusted, the two offsets stored into the buffer, `ssz_check_offsets(ssz_offs, 2, 16, len)`
(`CoOk`), and `o_npr`, `o_wit` read back (`o_npr ≤ o_wit ≤ len`); then `ds_A`.
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

theorem hoareG_sFailDIF {a : Act σ} (ha : ActOK a X) {sgf : Sig}
    (hfail : CSumm σ X a.Cb a.H (nm "ssz_fail") sgf [])
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) (hpf : sgf.params = [.any])
    (hgf : sgf.gw = []) (hgr : sgf.grows = true → a.sg.grows = true) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {c : ExpHOL 64} {k : Nat}
    {F : Prop} (hF : ∀ t : State σ, L t.locals → ev t c = some (.val (.word 0)) → F) :
    HoareG σ X (DI a Ar n L E) (sFail c k)
      (DQ a Ar n L (fun Γ q m g => E Γ q m g ∧ F)) :=
  hoareG_conseq (hoareG_sFail ha hfail hfr hpf hgf hgr (P := DI a Ar n L E)
    (fun t h => hha_of_di h) (c := c) (k := k)) (fun t _ ht => ht)
    (fun r t _ _ h => ⟨fun hr => by
      obtain ⟨⟨hL, Γ, q, he, hh, hB, hn, hE⟩, hc⟩ := h.1 hr
      exact ⟨hL, Γ, q, he, hh, hB, hn, hE, hF t hL hc⟩, h.2⟩)

theorem ej_and {Φ F : Prop} {Ar : BitVec 64} {Bf : Option (BitVec 64)} {Cz : Mem → BitVec 64 → Prop}
    {Γ : Gam} {q : Ptrs} {m : Mem} {g : LocalsH} (h : EJ Φ Ar Bf Cz Γ q m g) (hF : F) :
    EJ (Φ ∧ F) Ar Bf Cz Γ q m g := ⟨⟨h.1, hF⟩, h.2.1, h.2.2⟩

theorem di_start_blk {a : Act σ} (ha : ActOK a X) (hCb : a.Cb = Types.guestC) {Ar : BitVec 64}
    {n : Nat} {L : LocalsH → Prop} {Φ : Prop} {t : State σ} (hL : L t.locals)
    (hB : BlkH a Ar n t) (hΦ : Φ) : DI a Ar n L (EJ Φ Ar none CzT) t := by
  obtain ⟨Γ, q, he, hh, hF, hn⟩ := hB
  obtain ⟨W, hW, -⟩ := glob_at ha hh (g := nm "ssz_offs") (n := 32) (hCb ▸ scalarGlob_ssz_offs)
  exact ⟨hL, Γ, q, he, hh, hF, hn, hΦ, ⟨W, hW, trivial⟩, fun pl hpl => by cases hpl⟩

theorem di_start0 {a : Act σ} (ha : ActOK a X) (hCb : a.Cb = Types.guestC) {L : LocalsH → Prop}
    {Φ : Prop} {t : State σ} (hL : L t.locals) (hH : HHa a t) (hΦ : Φ) :
    DI a (0 : BitVec 64) 0 L (EJ Φ 0 none CzT) t := by
  obtain ⟨Γ, q, he, hh⟩ := hH
  obtain ⟨W, hW, -⟩ := glob_at ha hh (g := nm "ssz_offs") (n := 32) (hCb ▸ scalarGlob_ssz_offs)
  refine ⟨hL, Γ, q, he, hh, blkF_zero Γ q, fun x hx => ?_, hΦ, ⟨W, hW, trivial⟩,
    fun pl hpl => by cases hpl⟩
  obtain ⟨-, h1, h2⟩ := hx
  simp at h2

/-- A store into the offsets buffer of a word (no tracking). -/
theorem ds_soE {a : Act σ} (ha : ActOK a X) (hCb : a.Cb = Types.guestC) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {Φ : Prop} {j : Nat} (hj : j < 4) {ea : ExpHOL 64}
    (hea : ∀ (s : State σ) (W : BitVec 64), s.globals.lookup (nm "ssz_offs") = some (.val (.word W)) →
      ev s ea = some (.val (.word (W + BitVec.ofNat 64 (8 * j))))) {e : ExpHOL 64}
    (hval : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      ∃ x, v = .val (.word x)) :
    HoareG σ X (DI a Ar n L (EJ Φ Ar none CzT)) (.store ea e)
      (DQ a Ar n L (EJ Φ Ar none CzT)) := by
  have hse : scratchEnd < 2 ^ 64 := by decide
  refine hoareG_stsDI' ha ?_ hval ?_
  · intro s hs' hL Γ q he hh hE w hw
    obtain ⟨W', hW', h8, hb, hc⟩ := glob_at ha hh (g := nm "ssz_offs") (n := 32)
      (hCb ▸ scalarGlob_ssz_offs)
    rw [hea s W' hW'] at hw
    cases hw
    have hwn : (W' + BitVec.ofNat 64 (8 * j)).toNat = W'.toNat + 8 * j :=
      cell_toNat64 (by omega) (by omega)
    exact hc _ ⟨by rw [hwn]; omega, by rw [hwn]; omega, by rw [hwn]; omega⟩
  · intro s Γ q w x' mem hs' hL hw hv hrd hmem hov' hE
    obtain ⟨hΦ, ⟨W, hW, -⟩, -⟩ := hE
    exact ⟨hΦ, ⟨W, hW, trivial⟩, fun pl hpl => by cases hpl⟩


/-- `rd (W + 0) = rd W`. -/
theorem rd_add0 (m : Mem) (W : BitVec 64) : rd m (W + BitVec.ofNat 64 0) = rd m W := by simp

theorem co2_order {m : Mem} {W L O1 w : BitVec 64} (hco : CoOk m W L 2) (hr1 : rd m W = O1)
    (hw : w = rd m (W + BitVec.ofNat 64 8)) : O1.toNat ≤ w.toNat ∧ w.toNat ≤ L.toNat := by
  have h1 := hco 1 (by omega)
  simp only [show (1 : Nat) - 1 = 0 from rfl] at h1
  have e0 : rd m (W + BitVec.ofNat 64 (8 * 0)) = O1 := by rw [← hr1]; simp
  have e1 : rd m (W + BitVec.ofNat 64 (8 * 1)) = w := hw.symm
  rw [e0, e1] at h1
  exact ⟨h1.2 (by omega), h1.1⟩

theorem ne_p_len : nm "p" ≠ nm "len" := by decide
theorem ne_len_p : nm "len" ≠ nm "p" := by decide

theorem ds_0 {a : Act σ} (ha : ActOK a X) (hX : X.code.lookup = guestCode)
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
    (hAS : AllocSpec σ X (nm "alloc") .heap) (halloc : CSumm σ X a.Cb a.H (nm "alloc") allocSig [])
    {Pv Lv : BitVec 64} (hΦ : heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ heapEnd)
    (hobj : Hooks.SlObj a.Γ0 Pv Lv) :
    HoareG σ X (PreH a (LK [(nm "p", Pv), (nm "len", Lv)])) dsBody
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  have hse := heapEnd_lt64
  unfold dsBody
  refine hoareG_pre (P := DI a (0 : BitVec 64) 0 (LK [(nm "p", Pv), (nm "len", Lv)])
    (EJ (heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ heapEnd) 0 none CzT)) ?_
    (fun t _ h => di_start0 ha hCb h.1 h.2 hΦ)
  refine hoareG_seqDI (hoareG_sFailDIF ha hfail hfr (by simp [sfSig]) (by simp [sfSig])
    (by simp [sfSig]) (F := 2 ≤ Lv.toNat) ?_) ?_
  · intro t hL hc
    have := lower_false (cmp_val_false hc (ev_lw (lk_get hL (x := nm "len") (w := Lv) (by simp)))
      (ev_cw _ 2))
    simpa using this
  refine hoareG_pre (P := DI a (0 : BitVec 64) 0 (LK [(nm "p", Pv), (nm "len", Lv)])
    (fun Γ q m g => EJ (heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ heapEnd) 0 none CzT Γ q m g ∧
      2 ≤ Lv.toNat)) ?_ (fun t _ h => h)
  refine hoareG_pre (P := DI a (0 : BitVec 64) 0 (LK [(nm "p", Pv), (nm "len", Lv)])
    (EJ ((heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ heapEnd) ∧ 2 ≤ Lv.toNat) 0 none CzT)) ?_
    (fun t _ h => di_mono (fun _ h => h) (fun Γ q m g hE => ej_and hE.1 hE.2) h)
  refine hoareG_seqDI (hoareG_sFailDI ha hfail hfr (by simp [sfSig]) (by simp [sfSig])
    (by simp [sfSig])) ?_
  refine hoareG_seqDI (hoareG_assignDI ha.hH
    (L' := LK [(nm "p", Pv + BitVec.ofNat 64 2), (nm "len", Lv)]) ?_) ?_
  · intro s _ hL v hv
    rw [ev_add2 (ev_lw (lk_get hL (x := nm "p") (w := Pv) (by simp))) (ev_cw _ 2)] at hv
    cases hv
    intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl
    · exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ ne_p_len]; exact lk_get hL (by simp)
  refine hoareG_seqDI (hoareG_assignDI ha.hH
    (L' := LK [(nm "p", Pv + BitVec.ofNat 64 2), (nm "len", Lv - BitVec.ofNat 64 2)]) ?_) ?_
  · intro s _ hL v hv
    rw [ev_sub2 (ev_lw (lk_get hL (x := nm "len") (w := Lv) (by simp))) (ev_cw _ 2)] at hv
    cases hv
    intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl
    · rw [lk_set_ne _ _ ne_len_p]; exact lk_get hL (by simp)
    · exact lk_set_self _ _ _
  refine hoareG_seqDI (hoareG_sFailDI ha hfail hfr (by simp [sfSig]) (by simp [sfSig])
    (by simp [sfSig])) ?_
  refine hoareG_seqDI (ds_soE ha hCb (j := 0) (by decide) (ea := gv (nm "ssz_offs"))
    (fun s W h => hea_0 s W h) (fun s _ _ v hv => by
      obtain ⟨w, hw, -⟩ := ev_le32 hv; exact ⟨w, hw⟩)) ?_
  refine hoareG_seqDI (ds_soE ha hCb (j := 1) (by decide)
    (ea := .op .add [gv (nm "ssz_offs"), cw 8]) (fun s W h => hea_k s W 8 h) (fun s _ _ v hv => by
      obtain ⟨w, hw, -⟩ := ev_le32 hv; exact ⟨w, hw⟩)) ?_
  have hLk0 : ∀ q ∈ [(nm "p", Pv + BitVec.ofNat 64 2), (nm "len", Lv - BitVec.ofNat 64 2)],
      q.1 ≠ nm "o_npr" := by nmne
  refine hoareG_seqDI (Ar := 0) (n := 0)
    (L := LK [(nm "p", Pv + BitVec.ofNat 64 2), (nm "len", Lv - BitVec.ofNat 64 2)])
    (E := EJ ((heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ heapEnd) ∧ 2 ≤ Lv.toNat) 0 none
      (fun m W => CoOk m W (Lv - BitVec.ofNat 64 2) 2)) ?_ ?_
  · refine hoareG_callDI ha hchk (funSpec_ssz_check_offsetsN hX) (by simp [chkSig])
      (by simp [chkSig]) (by simp [chkSig]) ?_ ?_
    · intro s _ _ vs hvs
      have := evs_length hvs
      simp at this
      simp [chkSig, this]
    · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc co hB hE
      obtain ⟨hΦ', ⟨W, hW, -⟩, -⟩ := hE
      rw [evs_cons (show ev s (gv (nm "ssz_offs")) = some (.val (.word W)) from hW)
        (evs_cons (ev_cw _ 2) (evs_cons (ev_cw _ 16)
          (evs_cons (ev_lw (lk_get hL (x := nm "len") (w := Lv - BitVec.ofNat 64 2) (by simp)))
            evs_nil)))] at hvs
      cases hvs
      obtain ⟨hm, hg, hco⟩ := hLc v rfl W (BitVec.ofNat 64 2) (BitVec.ofNat 64 16)
        (Lv - BitVec.ofNat 64 2) rfl (by decide) (by decide)
      refine ⟨hΦ', ⟨W, by rw [hg]; exact hW, ?_⟩, fun pl hpl => by cases hpl⟩
      show CoOk st.memory W (Lv - BitVec.ofNat 64 2) 2
      rw [hm]; exact hco
  refine ds_dec_ld ha.hH (off := 0)
    (L' := fun w => LK ((nm "o_npr", w) :: [(nm "p", Pv + BitVec.ofNat 64 2),
      (nm "len", Lv - BitVec.ofNat 64 2)]))
    (E' := fun w => EJ ((heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ heapEnd) ∧ 2 ≤ Lv.toNat) 0 none
      (fun m W => CoOk m W (Lv - BitVec.ofNat 64 2) 2 ∧ rd m W = w))
    hea_0 (fun _ _ _ _ h => ej_glob h) ?_ ?_
  · intro s hs' hL Γ q hh hE W hW
    obtain ⟨hΦ', ⟨W', hW', hco⟩, hBk⟩ := hE
    rw [hW] at hW'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hW'
    subst hW'
    exact ⟨lk_set (s := s) hL _ hLk0, hΦ', ⟨W, hW, hco, (rd_add0 _ _).symm⟩, hBk⟩
  intro O1
  refine ds_dec_ld ha.hH (off := 8)
    (L' := fun w m => LK ((nm "o_wit", w) :: (nm "o_npr", O1) :: [(nm "p", Pv + BitVec.ofNat 64 2),
      (nm "len", Lv - BitVec.ofNat 64 2)]) m ∧
      (PhiA (Pv + BitVec.ofNat 64 2) (Lv - BitVec.ofNat 64 2) O1 w ∧ ObjN a.Γ0 (Pv + BitVec.ofNat 64 2).toNat (Lv - BitVec.ofNat 64 2).toNat))
    (E' := fun _ => EJ ((heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ heapEnd) ∧ 2 ≤ Lv.toNat) 0 none CzT)
    (fun s W h => hea_k s W 8 h) (fun _ _ _ _ h => ej_glob h) ?_ ?_
  · intro s hs' hL Γ q hh hE W hW
    obtain ⟨hΦ', ⟨W', hW', hco, hr1⟩, hBk⟩ := hE
    rw [hW] at hW'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hW'
    subst hW'
    obtain ⟨⟨hb, hsum⟩, h2⟩ := hΦ'
    have hord := co2_order hco hr1 rfl
    have e1 : (Pv + BitVec.ofNat 64 2).toNat = Pv.toNat + 2 := by
      rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt (by simp; omega)
    have e2 : (Lv - BitVec.ofNat 64 2).toNat = Lv.toNat - 2 := by
      rw [BitVec.toNat_sub]; simp; omega
    refine ⟨⟨lk_set (s := s) hL _ (by nmne), ⟨⟨?_, ?_⟩, hord.1, hord.2⟩, ?_⟩,
      ⟨⟨hb, hsum⟩, h2⟩, ⟨W, hW, trivial⟩, fun pl hpl => by cases hpl⟩
    · rw [e1]; omega
    · rw [e1, e2]; omega
    · exact objN_sub (objN_of_slObj hobj) (by rw [e1]; omega) (by rw [e1, e2]; omega)
  intro O2
  refine hoareG_pre (P := PreH a (fun m => LK ((nm "o_wit", O2) :: (nm "o_npr", O1) ::
      [(nm "p", Pv + BitVec.ofNat 64 2), (nm "len", Lv - BitVec.ofNat 64 2)]) m ∧
      (PhiA (Pv + BitVec.ofNat 64 2) (Lv - BitVec.ofNat 64 2) O1 O2 ∧ ObjN a.Γ0 (Pv + BitVec.ofNat 64 2).toNat (Lv - BitVec.ofNat 64 2).toNat))) ?_
    (fun t _ h => ⟨h.1, hha_of_di h⟩)
  refine Node.hoareG_allocN ha hAS halloc (SZ := BitVec.ofNat 64 96)
    (L' := fun Ar m => LK ((nm "si", Ar) :: (nm "o_wit", O2) :: (nm "o_npr", O1) ::
      [(nm "p", Pv + BitVec.ofNat 64 2), (nm "len", Lv - BitVec.ofNat 64 2)]) m ∧
      (PhiA (Pv + BitVec.ofNat 64 2) (Lv - BitVec.ofNat 64 2) O1 O2 ∧ ObjN a.Γ0 (Pv + BitVec.ofNat 64 2).toNat (Lv - BitVec.ofNat 64 2).toNat))
    (fun s _ _ => ev_cw _ 96) ?_ ?_
  · intro s st Ar hL
    exact ⟨lk_set (s := { st with locals := s.locals }) hL.1 Ar (by nmne), hL.2⟩
  · intro Ar hArn hstat
    obtain ⟨hs1, hs2, hs3⟩ := hstat
    have h96 : (BitVec.ofNat 64 96).toNat = 96 := rfl
    rw [h96] at hs2
    intro t ht ⟨⟨hLk, hPhi, hob⟩, hB⟩ hg
    exact ds_A ha hX hC hCb hH hgr hret hpay hsfc hreq hfail hfr hchk hdbl ⟨hs1, hs2⟩ hs3 hob hPhi t ht
      (di_start_blk ha hCb (lk_sub hLk (by
        intro q hq
        simp only [kvA0, List.mem_cons, List.not_mem_nil, or_false] at hq ⊢
        rcases hq with rfl | rfl | rfl | rfl | rfl <;> simp)) hB hPhi) hg

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.ds_0
