import InitECandidate.Solver.MemSafe.Ra.Tail

set_option autoImplicit false

/-!
# `recover_authority`: from `var payload = p - (buf + 10)` (sonnet-ra)

The list-header arithmetic: `hl = rlp_list_header_len(payload)` is in `[1, 9]`, `start = buf + 10 - hl`
is in `[buf + 1, buf + 9]`, so the header call (`buf 9`) and the magic-byte store at `start - 1`
stay inside `[buf, buf + 128)`.
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

def bkv (A Mk B : BitVec 64) (YP R S : ValueHOL 64) : List (MlS × ValueHOL 64) :=
  [(nm "buf", .val (.word B)), (nm "mark", .val (.word Mk)), (nm "auth", .val (.word A)),
   (nm "yp", YP), (nm "r", R), (nm "s", S)]

theorem se_lt : scratchEnd < 2 ^ 60 := by decide

theorem add10 {B : BitVec 64} (hB : B.toNat + 128 ≤ scratchEnd) :
    (B + BitVec.ofNat 64 10).toNat = B.toNat + 10 := by
  have := se_lt
  rw [toNat_add' (by rw [toNat_ofNat' (by norm_num)]; omega), toNat_ofNat' (by norm_num)]

theorem mid_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aR σ vs s0 Γ0 p0) guestCtx) (A Mk B P3 : BitVec 64) (YP R S : ValueHOL 64)
    (d : Nat) :
    HoareG σ guestCtx (GI (aR σ vs s0 Γ0 p0)
        (fun m => LK ((nm "p", .val (.word P3)) :: bkv A Mk B YP R S) m ∧
          P3.toNat = B.toNat + 10 + d)
        (fun Γ q _ => EB (aR σ vs s0 Γ0 p0) Mk B Γ q))
      raMid (GP (aR σ vs s0 Γ0 p0) (fun _ => False) (fun _ _ _ => True) RaRv) := by
  set a := aR σ vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hX : guestCtx.code.lookup = guestCode := (Rec.foldOK_guestR (σ := σ)).hX
  have hse := se_lt
  unfold raMid
  -- var payload = p - (buf + 10)
  refine gp_decW ha.hH
    (L1 := fun PL m => LK ((nm "payload", .val (.word PL)) :: bkv A Mk B YP R S) m)
    (E1 := fun PL Γ q _ => EB a Mk B Γ q) (L2 := fun _ => False) (L3 := fun _ => False)
    ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE v hv
    have e : ev s (.op .sub [lv (nm "p"), .op .add [lv (nm "buf"), cw 10]]) =
        some (.val (.word (P3 - (B + BitVec.ofNat 64 10)))) :=
      ev_sub2 (lk_ev_w hL.1 (by ra_mem [bkv]))
        (ev_add2 (lk_ev_w hL.1 (by ra_mem [bkv])) (ev_cw s 10))
    rw [e] at hv
    cases hv
    exact ⟨_, rfl, lk_upd_gen (s := s) hL.1 (by ra_mem [bkv]) (by ra_rest [bkv]), hE⟩
  intro PL
  -- var hl = rlp_list_header_len(payload)
  refine gp_decCallW ha (sumA_of_csumm lhl_C) (footRet_rlp_list_header_len (σ := σ) hX)
    (by simp) (fun h => by simp at h)
    (L1 := fun HL m => LK ((nm "hl", .val (.word HL)) :: (nm "payload", .val (.word PL)) ::
      bkv A Mk B YP R S) m)
    (E1 := fun HL Γ q _ => EB a Mk B Γ q ∧ 1 ≤ HL.toNat ∧ HL.toNat ≤ 9)
    (L2 := fun _ => False) (L3 := fun _ => False) ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE vs hvs
    exact argsAnyF (a := a) (by simp) rfl hvs
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    refine ⟨scrOld_cof haC co rfl, fun HL hHL => ⟨eb_cof haC co rfl hE, ?_⟩⟩
    rw [evs_cons (lk_ev_w hL (x := nm "payload") (w := PL) (by ra_mem [bkv])) evs_nil] at hvs
    cases hvs
    obtain ⟨-, -, hret⟩ := hLc (by simp [Good, hHL]) trivial
    have hl := hret _ hHL PL (by simp [argW, wordOf])
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hl
    have := Helpers.hdrLen_le (n := PL.toNat) PL.isLt
    rw [hl, toNat_ofNat' (by omega)]
    exact ⟨this.1, this.2⟩
  · intro s st HL hL
    exact lk_upd_gen (s := { st with locals := s.locals }) hL (by ra_mem [bkv]) (by ra_rest [bkv])
  intro HL
  -- var start = buf + 10 - hl
  refine gp_decW ha.hH
    (L1 := fun ST m => LK ((nm "start", .val (.word ST)) :: (nm "hl", .val (.word HL)) ::
      (nm "payload", .val (.word PL)) :: bkv A Mk B YP R S) m)
    (E1 := fun ST Γ q _ => EB a Mk B Γ q ∧ 1 ≤ HL.toNat ∧ HL.toNat ≤ 9 ∧
      ST.toNat = B.toNat + 10 - HL.toNat)
    (L2 := fun _ => False) (L3 := fun _ => False) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE v hv
    have h10 := add10 hE.1.2.2
    have e : ev s (.op .sub [.op .add [lv (nm "buf"), cw 10], lv (nm "hl")]) =
        some (.val (.word ((B + BitVec.ofNat 64 10) - HL))) :=
      ev_sub2 (ev_add2 (lk_ev_w hL (by ra_mem [bkv])) (ev_cw s 10))
        (lk_ev_w hL (x := nm "hl") (w := HL) (by ra_mem [bkv]))
    rw [e] at hv
    cases hv
    refine ⟨_, rfl, lk_upd_gen (s := s) hL (by ra_mem [bkv]) (by ra_rest [bkv]),
      hE.1, hE.2.1, hE.2.2, ?_⟩
    rw [toNat_sub' (by rw [h10]; have := hE.2.2; omega), h10]
  intro ST
  -- rlp_encode_list_header(start, payload)
  refine gp_seq (gp_callFM ha (sumA_of_csumm elh_C) (funSpec_true _) (by simp) (fun h => by simp at h)
    (E' := fun Γ q _ => EB a Mk B Γ q ∧ 1 ≤ HL.toNat ∧ HL.toNat ≤ 9 ∧
      ST.toNat = B.toNat + 10 - HL.toNat) ?_ ?_) ?_
  · intro s Γ q hs hL hh hE vs hvs
    rw [evs_cons (lk_ev_w hL (x := nm "start") (w := ST) (by ra_mem [bkv]))
      (evs_cons (lk_ev_w hL (x := nm "payload") (w := PL) (by ra_mem [bkv])) evs_nil)] at hvs
    cases hvs
    have hown : Own a.p0 q Γ ST.toNat 9 := own_sub hE.1.2.1
      (by have := hE.2.2.2; have := hE.2.2.1; omega)
      (by have := hE.2.2.2; have := hE.2.1; have := hE.1.2.2; omega)
    exact ⟨ao_ba ST _ (own_bufOK hown), fun x hx => Or.inr (Or.inr (Or.inl (own_foot hown (ac_ba hx)))),
      fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    exact ⟨scrOld_cof haC co rfl, fun _ => ⟨eb_cof haC co rfl hE.1, hE.2⟩⟩
  -- st8 start - 1, 5
  refine gp_seq (gp_stByteOut ha (A := ST - BitVec.ofNat 64 1)
    (E' := fun Γ q _ => EB a Mk B Γ q)
    (L := LK ((nm "start", .val (.word ST)) :: (nm "hl", .val (.word HL)) ::
      (nm "payload", .val (.word PL)) :: bkv A Mk B YP R S))
    (E := fun Γ q _ => EB a Mk B Γ q ∧ 1 ≤ HL.toNat ∧ HL.toNat ≤ 9 ∧
      ST.toNat = B.toNat + 10 - HL.toNat) ?_ ?_ ?_) ?_
  · intro s hL
    exact ev_sub2 (lk_ev_w hL (x := nm "start") (w := ST) (by ra_mem [bkv])) (ev_cw s 1)
  · intro Γ q M hE
    have h1 : (ST - BitVec.ofNat 64 1).toNat = ST.toNat - 1 := by
      rw [toNat_sub' (by rw [toNat_ofNat' (by norm_num)]; have := hE.2.2.1; have := hE.2.2.2; omega),
        toNat_ofNat' (by norm_num)]
    rw [h1]
    exact own_sub hE.1.2.1 (by have := hE.2.2.2; have := hE.2.2.1; omega)
      (by have := hE.2.2.2; have := hE.2.1; have := hE.1.2.2; omega)
  · intro Γ q M mem hE
    exact hE.1
  -- var h = alloc(32)
  refine gp_decCallW ha (sumA_of_csumm alloc_C) (funSpec_true _) (by simp) (fun h => by simp at h)
    (L1 := fun H m => LK ((nm "h", .val (.word H)) :: (nm "start", .val (.word ST)) ::
      (nm "hl", .val (.word HL)) :: (nm "payload", .val (.word PL)) :: bkv A Mk B YP R S) m)
    (E1 := fun H Γ q _ => EB a Mk B Γ q ∧ Own a.p0 q Γ H.toNat 32)
    (L2 := fun _ => False) (L3 := fun _ => False) ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE vs hvs
    exact argsAnyF (a := a) (by simp) rfl hvs
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    exact ⟨scrOld_cof haC co rfl, fun H hH => ⟨eb_cof haC co rfl hE,
      (alloc_own ha (by norm_num) hvs co hH).1⟩⟩
  · intro s st H hL
    exact lk_upd_gen (s := { st with locals := s.locals }) hL (by ra_mem [bkv]) (by ra_rest [bkv])
  intro H
  -- keccak256(start - 1, payload + hl + 1, h); then the tail
  refine gp_seq (gp_callFM ha (sumA_of_csumm keccak_C) (funSpec_true _) (by simp) (fun h => by simp at h)
    (E' := fun Γ q _ => EB a Mk B Γ q ∧ Own a.p0 q Γ H.toNat 32) ?_ ?_) ?_
  · intro s Γ q hs hL hh hE vs hvs
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
    have e3 := Option.some.inj ((h3.symm).trans (lk_ev_w hL (x := nm "h") (w := H) (by ra_mem [bkv])))
    have := evs_nil_eq hvs3
    subst e3 this
    exact ⟨ao_aab _ _ H (own_bufOK hE.2), fun x hx =>
      Or.inr (Or.inr (Or.inl (own_foot hE.2 (ac_aab hx)))), fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    exact ⟨scrOld_cof haC co rfl, fun _ => ⟨eb_cof haC co rfl hE.1, own_cof co rfl hE.2⟩⟩
  refine hoareG_pre (tail_G ha A Mk H YP R S) ?_
  rintro s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩
  refine ⟨?_, Γ, q, he, hh, hsc, hE.1.1, hE.2⟩
  intro p hp
  simp only [tkv, List.mem_cons, List.not_mem_nil, or_false] at hp
  exact hL p (by
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl <;> simp [bkv])

end InitECandidate.Solver.MemSafe.Ra

#print axioms InitECandidate.Solver.MemSafe.Ra.mid_G
