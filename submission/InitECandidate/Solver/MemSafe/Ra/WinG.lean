import InitECandidate.Solver.MemSafe.Ra.Mid

set_option autoImplicit false

/-!
# `recover_authority`: the window, from `var mark = heap_mark()` (sonnet-ra)

The width-returning writers: `rlp_put_u256` returns at most `33`, `rlp_encode_bytes(p, a, 20)` at most
`21`, `rlp_encode_word` at most `9`; so the write pointer stays within `[buf + 10, buf + 73]` and
each writer's buffer argument lies inside the owned block `[buf, buf + 128)`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ra
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins

variable {σ : Type} {X : Ctx 64}

def kvA (A : BitVec 64) (YP R S : ValueHOL 64) : List (MlS × ValueHOL 64) :=
  [(nm "auth", .val (.word A)), (nm "yp", YP), (nm "r", R), (nm "s", S)]

theorem hdrLen20 : Helpers.hdrLen 20 = 1 := by decide

theorem win_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aR σ vs s0 Γ0 p0) guestCtx) (A : BitVec 64) (YP R S : ValueHOL 64) :
    HoareG σ guestCtx (GI (aR σ vs s0 Γ0 p0) (LK (kvA A YP R S)) (fun _ _ _ => True))
      raWin (GP (aR σ vs s0 Γ0 p0) (fun _ => False) (fun _ _ _ => True) RaRv) := by
  set a := aR σ vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hX : guestCtx.code.lookup = guestCode := (Rec.foldOK_guestR (σ := σ)).hX
  have hse := se_lt
  unfold raWin
  -- var mark = heap_mark()
  refine gp_markH ha hX (L1 := fun Mk m => LK ((nm "mark", .val (.word Mk)) :: kvA A YP R S) m)
    (E1 := fun Mk Γ q _ => Win a Mk Γ q) (L2 := fun _ => False) (L3 := fun _ => False)
    (fun s st w hL => lk_upd_gen (s := { st with locals := s.locals }) hL (by ra_mem [kvA])
      (by ra_rest [kvA]))
    (fun s Γ q w hh' _ hw => win_mark haC hh' hw) ?_ (fun _ _ _ h => h.elim)
  intro Mk
  -- var buf = alloc(128)
  refine gp_decCallW ha (sumA_of_csumm alloc_C) (funSpec_true _) (by simp) (fun h => by simp at h)
    (L1 := fun B m => LK (bkv A Mk B YP R S) m)
    (E1 := fun B Γ q _ => EB a Mk B Γ q)
    (L2 := fun _ => False) (L3 := fun _ => False) ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE vs hvs
    exact argsAnyF (a := a) (by simp) rfl hvs
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    refine ⟨scrOld_cof haC co rfl, fun B hB => ?_⟩
    obtain ⟨hown, -⟩ := alloc_own ha (by norm_num) hvs co hB
    exact ⟨win_cof haC co rfl hE, hown, bufOK_end (heap_ord co.heap) (layout_heap haC co.heap)
      B.isLt (by norm_num) (by norm_num) (own_bufOK hown)⟩
  · intro s st B hL
    exact lk_upd_gen (s := { st with locals := s.locals }) hL (by ra_mem [bkv, kvA])
      (by ra_rest [bkv, kvA])
  intro B
  -- var p = buf + 10
  refine gp_decW ha.hH
    (L1 := fun P0 m => LK ((nm "p", .val (.word P0)) :: bkv A Mk B YP R S) m ∧
      P0.toNat = B.toNat + 10)
    (E1 := fun P0 Γ q _ => EB a Mk B Γ q) (L2 := fun _ => False) (L3 := fun _ => False)
    ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE v hv
    have e : ev s (.op .add [lv (nm "buf"), cw 10]) = some (.val (.word (B + BitVec.ofNat 64 10))) :=
      ev_add2 (lk_ev_w hL (by ra_mem [bkv])) (ev_cw s 10)
    rw [e] at hv
    cases hv
    exact ⟨_, rfl, ⟨lk_upd_gen (s := s) hL (by ra_mem [bkv]) (by ra_rest [bkv]),
      add10 hE.2.2⟩, hE⟩
  intro P0
  -- var w = rlp_put_u256(p, lds {1,1,1,1} (auth + 0))
  refine gp_decCallW ha sumSpecA_put_u256_G (funSpec_true _) (by simp [putSig])
    (fun h => by simp [putSig] at h)
    (L1 := fun W1 m => LK ((nm "w", .val (.word W1)) :: (nm "p", .val (.word P0)) ::
      bkv A Mk B YP R S) m ∧ P0.toNat = B.toNat + 10)
    (E1 := fun W1 Γ q _ => EB a Mk B Γ q ∧ W1.toNat ≤ 33)
    (L2 := fun _ => False) (L3 := fun _ => False) ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE vs hvs
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    have e1 := Option.some.inj ((h1.symm).trans (lk_ev_w hL.1 (x := nm "p") (w := P0)
      (by ra_mem [bkv])))
    have e2 := evs_nil_eq hvs2
    subst e1 e2
    have hown : Own a.p0 q Γ P0.toNat 41 := own_sub hE.2.1 (by have := hL.2; omega)
      (by have := hL.2; omega)
    exact ⟨ao_ba P0 v2 (own_bufOK hown), fun x hx =>
      Or.inr (Or.inr (Or.inl (own_foot hown (ac_ba hx)))), fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    refine ⟨scrOld_cof haC co rfl, fun W1 hW => ⟨eb_cof haC co rfl hE, ?_⟩⟩
    obtain ⟨w, hw, hle⟩ := hQ _ hW
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    rw [hw]; exact hle
  · intro s st W1 hL
    exact ⟨lk_upd_gen (s := { st with locals := s.locals }) hL.1 (by ra_mem [bkv])
      (by ra_rest [bkv]), hL.2⟩
  intro W1
  -- p = p + w
  refine gp_seq (gp_assignE ha.hH (x := nm "p")
    (L := fun m => LK ((nm "w", .val (.word W1)) :: (nm "p", .val (.word P0)) ::
      bkv A Mk B YP R S) m ∧ P0.toNat = B.toNat + 10)
    (E := fun Γ q _ => EB a Mk B Γ q ∧ W1.toNat ≤ 33)
    (L' := fun m => LK ((nm "p", .val (.word (P0 + W1))) :: (nm "w", .val (.word W1)) ::
      bkv A Mk B YP R S) m ∧ (P0 + W1).toNat = B.toNat + 10 + W1.toNat) ?_) ?_
  · intro s Γ q hs hL hh hE v hv
    have e : ev s (.op .add [lv (nm "p"), lv (nm "w")]) = some (.val (.word (P0 + W1))) :=
      ev_add2 (lk_ev_w hL.1 (by ra_mem [bkv])) (lk_ev_w hL.1 (by ra_mem [bkv]))
    rw [e] at hv
    cases hv
    refine ⟨lk_upd_gen (s := s) hL.1 (by ra_mem [bkv]) (by ra_rest [bkv]), ?_⟩
    rw [toNat_add' (by have := hL.2; have := hE.1.2.2; have := hE.2; omega)]
    omega
  -- w = rlp_encode_bytes(p, lds 1 (auth + 32), 20)
  refine gp_callAS ha (sumA_of_csumm encBytes_C)
    (Helpers.footRet_rlp_encode_bytes (σ := σ) (X := guestCtx) hX Helpers.alignedDom_guestCtx)
    (by simp) (fun h => by simp at h)
    (L1 := fun W2 m => LK ((nm "w", .val (.word W2)) :: (nm "p", .val (.word (P0 + W1))) ::
      bkv A Mk B YP R S) m ∧ (P0 + W1).toNat = B.toNat + 10 + W1.toNat)
    (E1 := fun W2 Γ q _ => EB a Mk B Γ q ∧ W1.toNat ≤ 33 ∧ W2.toNat ≤ 21)
    (L2 := fun _ => False) (E2 := fun _ _ _ => True) ?_ ?_ ?_ ?_ ?_
  · intro m hL
    exact ⟨_, hL.1 (nm "w", .val (.word W1)) (by ra_mem [bkv])⟩
  · intro s Γ q hs hL hh hE vs hvs
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
    have e1 := Option.some.inj ((h1.symm).trans (lk_ev_w hL.1 (x := nm "p") (w := P0 + W1)
      (by ra_mem [bkv])))
    have e3 := Option.some.inj ((h3.symm).trans (ev_cw s 20))
    have := evs_nil_eq hvs3
    subst e1 e3 this
    have h20 : (BitVec.ofNat 64 20).toNat = 20 := toNat_ofNat' (by norm_num)
    have hown : Own a.p0 q Γ (P0 + W1).toNat 29 := own_sub hE.1.2.1 (by have := hL.2; omega)
      (by have := hL.2; have := hE.1.2.2; have := hE.2; omega)
    refine ⟨ao_barg _ v2 _ 9 (by rw [h20]; exact own_bufOK hown), fun x hx => ?_, fun _ => trivial⟩
    have := ac_barg hx
    rw [h20] at this
    exact Or.inr (Or.inr (Or.inl (own_foot hown this)))
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    refine ⟨scrOld_cof haC co rfl, fun W2 hW => ⟨eb_cof haC co rfl hE.1, hE.2, ?_⟩⟩
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
    have e1 := Option.some.inj ((h1.symm).trans (lk_ev_w hL.1 (x := nm "p") (w := P0 + W1)
      (by ra_mem [bkv])))
    have e3 := Option.some.inj ((h3.symm).trans (ev_cw s 20))
    have := evs_nil_eq hvs3
    subst e1 e3 this
    have h20 : (BitVec.ofNat 64 20).toNat = 20 := toNat_ofNat' (by norm_num)
    have hP : Helpers.EncPre [.val (.word (P0 + W1)), v2, .val (.word (BitVec.ofNat 64 20))] :=
      ⟨P0 + W1, BitVec.ofNat 64 20, by simp [argW, wordOf], by simp [argW, wordOf],
        by rw [h20, hdrLen20]; have := hL.2; have := hE.1.2.2; have := hE.2; omega⟩
    obtain ⟨-, -, hret⟩ := hLc (by simp [Good, hW]) hP
    obtain ⟨k, hk, -, hk2, -⟩ := hret _ hW (BitVec.ofNat 64 20) (by simp [argW, wordOf])
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hk
    rw [h20, hdrLen20] at hk2
    rw [hk, toNat_ofNat' (by omega)]
    omega
  · intro s st W2 hL
    exact ⟨lk_upd_gen (s := { st with locals := s.locals }) hL.1 (by ra_mem [bkv])
      (by ra_rest [bkv]), hL.2⟩
  intro W2
  -- p = p + w
  refine gp_seq (gp_assignE ha.hH (x := nm "p")
    (L := fun m => LK ((nm "w", .val (.word W2)) :: (nm "p", .val (.word (P0 + W1))) ::
      bkv A Mk B YP R S) m ∧ (P0 + W1).toNat = B.toNat + 10 + W1.toNat)
    (E := fun Γ q _ => EB a Mk B Γ q ∧ W1.toNat ≤ 33 ∧ W2.toNat ≤ 21)
    (L' := fun m => LK ((nm "p", .val (.word (P0 + W1 + W2))) :: (nm "w", .val (.word W2)) ::
      bkv A Mk B YP R S) m ∧ (P0 + W1 + W2).toNat = B.toNat + 10 + (W1.toNat + W2.toNat)) ?_) ?_
  · intro s Γ q hs hL hh hE v hv
    have e : ev s (.op .add [lv (nm "p"), lv (nm "w")]) =
        some (.val (.word (P0 + W1 + W2))) :=
      ev_add2 (lk_ev_w hL.1 (by ra_mem [bkv])) (lk_ev_w hL.1 (by ra_mem [bkv]))
    rw [e] at hv
    cases hv
    refine ⟨lk_upd_gen (s := s) hL.1 (by ra_mem [bkv]) (by ra_rest [bkv]), ?_⟩
    rw [toNat_add' (by have := hL.2; have := hE.1.2.2; have := hE.2.1; have := hE.2.2; omega)]
    omega
  -- w = rlp_encode_word(p, lds 1 (auth + 40))
  refine gp_callAS ha (sumA_of_csumm encWord_C)
    (Helpers.footRet_rlp_encode_word (σ := σ) (X := guestCtx) hX Helpers.alignedDom_guestCtx)
    (by simp) (fun h => by simp at h)
    (L1 := fun W3 m => LK ((nm "w", .val (.word W3)) :: (nm "p", .val (.word (P0 + W1 + W2))) ::
      bkv A Mk B YP R S) m ∧ (P0 + W1 + W2).toNat = B.toNat + 10 + (W1.toNat + W2.toNat))
    (E1 := fun W3 Γ q _ => EB a Mk B Γ q ∧ W1.toNat ≤ 33 ∧ W2.toNat ≤ 21 ∧ W3.toNat ≤ 9)
    ?_ ?_ ?_ ?_ ?_
  · intro m hL
    exact ⟨_, hL.1 (nm "w", .val (.word W2)) (by ra_mem [bkv])⟩
  · intro s Γ q hs hL hh hE vs hvs
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    have e1 := Option.some.inj ((h1.symm).trans (lk_ev_w hL.1 (x := nm "p") (w := P0 + W1 + W2)
      (by ra_mem [bkv])))
    have e2 := evs_nil_eq hvs2
    subst e1 e2
    have hown : Own a.p0 q Γ (P0 + W1 + W2).toNat 9 := own_sub hE.1.2.1
      (by have := hL.2; omega)
      (by have := hL.2; have := hE.1.2.2; have := hE.2.1; have := hE.2.2; omega)
    exact ⟨ao_ba _ v2 (own_bufOK hown), fun x hx =>
      Or.inr (Or.inr (Or.inl (own_foot hown (ac_ba hx)))), fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    refine ⟨scrOld_cof haC co rfl, fun W3 hW => ⟨eb_cof haC co rfl hE.1, hE.2.1, hE.2.2, ?_⟩⟩
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    have e1 := Option.some.inj ((h1.symm).trans (lk_ev_w hL.1 (x := nm "p") (w := P0 + W1 + W2)
      (by ra_mem [bkv])))
    subst e1
    obtain ⟨x, rfl⟩ := Frames.ev_load_word h2
    have hP : Helpers.WPre [.val (.word (P0 + W1 + W2)), .val (.word x)] :=
      ⟨P0 + W1 + W2, by simp [argW, wordOf], fun W hW => by
        have h1 := (Helpers.wordLen_le W.isLt).2
        have := hL.2; have := hE.1.2.2; have := hE.2.1; have := hE.2.2; omega⟩
    obtain ⟨-, -, hret⟩ := hLc (by simp [Good, hW]) hP
    have hr := hret _ hW x (by simp [argW, wordOf])
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hr
    have := (Helpers.wordLen_le x.isLt).2
    rw [hr, toNat_ofNat' (by omega)]
    exact this
  · intro s st W3 hL
    exact ⟨lk_upd_gen (s := { st with locals := s.locals }) hL.1 (by ra_mem [bkv])
      (by ra_rest [bkv]), hL.2⟩
  intro W3
  -- p = p + w
  refine gp_seq (gp_assignE ha.hH (x := nm "p")
    (L := fun m => LK ((nm "w", .val (.word W3)) :: (nm "p", .val (.word (P0 + W1 + W2))) ::
      bkv A Mk B YP R S) m ∧ (P0 + W1 + W2).toNat = B.toNat + 10 + (W1.toNat + W2.toNat))
    (E := fun Γ q _ => EB a Mk B Γ q ∧ W1.toNat ≤ 33 ∧ W2.toNat ≤ 21 ∧ W3.toNat ≤ 9)
    (L' := fun m => LK ((nm "p", .val (.word (P0 + W1 + W2 + W3))) :: bkv A Mk B YP R S) m ∧
      (P0 + W1 + W2 + W3).toNat = B.toNat + 10 + (W1.toNat + W2.toNat + W3.toNat)) ?_) ?_
  · intro s Γ q hs hL hh hE v hv
    have e : ev s (.op .add [lv (nm "p"), lv (nm "w")]) =
        some (.val (.word (P0 + W1 + W2 + W3))) :=
      ev_add2 (lk_ev_w hL.1 (by ra_mem [bkv])) (lk_ev_w hL.1 (by ra_mem [bkv]))
    rw [e] at hv
    cases hv
    refine ⟨lk_upd_gen (s := s) hL.1 (by ra_mem [bkv]) (by ra_rest [bkv]), ?_⟩
    have f1 := hL.2
    have f2 := hE.1.2.2
    have f3 := hE.2.1
    have f4 := hE.2.2.1
    have f5 := hE.2.2.2
    rw [toNat_add' (by omega)]
    omega
  refine hoareG_pre (mid_G ha A Mk B (P0 + W1 + W2 + W3) YP R S
    (W1.toNat + W2.toNat + W3.toNat)) ?_
  rintro s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩
  exact ⟨hL, Γ, q, he, hh, hsc, hE.1⟩

end InitECandidate.Solver.MemSafe.Ra

#print axioms InitECandidate.Solver.MemSafe.Ra.win_G
