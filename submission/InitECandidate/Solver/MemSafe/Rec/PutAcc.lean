import InitECandidate.Solver.MemSafe.Rec.TxBound
import InitECandidate.Solver.MemSafe.Rec.LkAll

set_option autoImplicit false

/-!
# `tx_put_access_list`: the writer spec

**`wspec_tx_put_access_list hC hA`**: `WSpec σ X "tx_put_access_list" (PreA ALPf) (FA ALPf)`.
With the records below `D` and `accSum < 2^63` (no 64-bit wrap in `33 · ns`), the writer is exact:
it writes `hdrLen AL` header bytes and then exactly `alpT i` bytes per record, `AL = ALPf`, so
all writes lie in `[D, D + hdrLen AL + AL) ⊆ [D, D + 9 + AL)` and it returns `hdrLen AL + AL`.
The `ACC_SLOTS_N` reads see the entry memory (aligned cells below `D`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type} {X : Ctx 64}

/-! ## Code -/

def wcall (f : String) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .call (some (some (.local, nm "w"), none)) (nm f) args

def padv : ProgHOL 64 := .assign .local (nm "p") (.op .add [lv (nm "p"), lv (nm "w")])

def tpaInner : ProgHOL 64 :=
  .seq (.while (.cmp .lower (lv (nm "j")) (lv (nm "ns")))
      (.seq (wcall "rlp_encode_bytes"
          [lv (nm "p"), .op .add [lv (nm "keys"), .panop .mul [lv (nm "j"), cw 32]], cw 32])
        (.seq padv (.assign .local (nm "j") (.op .add [lv (nm "j"), cw 1])))))
    (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))

def tpaLoop : ProgHOL 64 :=
  .dec (nm "rec") .one (.op .add [lv (nm "recs"), .panop .mul [lv (nm "i"), cw 24]])
    (.dec (nm "ns") .one (.load .one (.op .add [lv (nm "rec"), cw 16]))
      (.dec (nm "inner") .one (.panop .mul [cw 33, lv (nm "ns")])
        (.decCall (nm "ih") .one (nm "rlp_list_header_len") [lv (nm "inner")]
          (.seq (wcall "rlp_encode_list_header" [lv (nm "p"), .op .add [cw 21, lv (nm "ih"), lv (nm "inner")]])
          (.seq padv
          (.seq (wcall "rlp_encode_bytes" [lv (nm "p"), .load .one (.op .add [lv (nm "rec"), cw 0]), cw 20])
          (.seq padv
          (.seq (wcall "rlp_encode_list_header" [lv (nm "p"), lv (nm "inner")])
          (.seq padv
          (.dec (nm "keys") .one (.load .one (.op .add [lv (nm "rec"), cw 8]))
            (.dec (nm "j") .one (cw 0) tpaInner)))))))))))

def tpaBody : ProgHOL 64 :=
  .decCall (nm "pl") .one (nm "access_list_payload_len") [lv (nm "recs"), lv (nm "n")]
    (.decCall (nm "w") .one (nm "rlp_encode_list_header") [lv (nm "dst"), lv (nm "pl")]
      (.dec (nm "p") .one (.op .add [lv (nm "dst"), lv (nm "w")])
        (.dec (nm "i") .one (cw 0)
          (.seq (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) tpaLoop)
            (.return (.op .sub [lv (nm "p"), lv (nm "dst")]))))))

def tpaPs : List (MlS × ShapeHOL) := [(nm "dst", .one), (nm "recs", .one), (nm "n", .one)]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_tx_put_access_list : fnEntry Guest.Software.guestFn_tx_put_access_list =
    (nm "tx_put_access_list", tpaPs, tpaBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_tx_put_access_list : guestCode (nm "tx_put_access_list") =
    some (tpaPs, tpaBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 322) (by decide)) ⟨_, rfl⟩
    entry_tx_put_access_list

/-! ## Arithmetic -/

theorem accSum_mono (m : Mem) (P : BitVec 64) : ∀ {i n : Nat}, i ≤ n → accSum m P i ≤ accSum m P n
  | i, 0, h => by rw [Nat.le_zero.mp h]
  | i, n + 1, h => by
      rcases Nat.lt_or_ge i (n + 1) with h' | h'
      · have := accSum_mono m P (i := i) (n := n) (by omega)
        simp only [accSum]; omega
      · rw [show i = n + 1 by omega]

theorem accNs_le (m : Mem) (P : BitVec 64) {i n : Nat} (h : i < n) :
    accSum m P i + (39 + 33 * accNs m P i) ≤ accSum m P n := by
  have := accSum_mono m P (i := i + 1) (n := n) h
  simpa [accSum] using this

theorem alpS_mono (m : Mem) (P : BitVec 64) : ∀ {i n : Nat}, i ≤ n → alpS m P i ≤ alpS m P n
  | i, 0, h => by rw [Nat.le_zero.mp h]
  | i, n + 1, h => by
      rcases Nat.lt_or_ge i (n + 1) with h' | h'
      · have := alpS_mono m P (i := i) (n := n) (by omega)
        simp only [alpS]; omega
      · rw [show i = n + 1 by omega]

theorem alpI_toNat {m : Mem} {P : BitVec 64} {i : Nat} (h : 33 * accNs m P i < 2 ^ 63) :
    (alpI m P i).toNat = 33 * accNs m P i := by
  unfold alpI accNs at *
  rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 33) (by decide),
    Nat.mod_eq_of_lt (by omega)]

theorem alpE_toNat {m : Mem} {P : BitVec 64} {i : Nat} (h : 33 * accNs m P i < 2 ^ 63) :
    (alpE m P i).toNat = 21 + Helpers.hdrLen (alpI m P i).toNat + (alpI m P i).toNat := by
  have hI := alpI_toNat h
  have h1 := hdrLen_le (n := (alpI m P i).toNat) (by omega)
  have hb1 : (BitVec.ofNat 64 (Helpers.hdrLen (alpI m P i).toNat) + alpI m P i).toNat =
      Helpers.hdrLen (alpI m P i).toNat + (alpI m P i).toNat := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := Helpers.hdrLen _) (by omega),
      Nat.mod_eq_of_lt (by omega)]
  unfold alpE
  rw [BitVec.toNat_add, hb1, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 21) (by decide),
    Nat.mod_eq_of_lt (by omega)]
  omega

theorem addc (D : BitVec 64) (c k : Nat) :
    D + BitVec.ofNat 64 c + BitVec.ofNat 64 k = D + BitVec.ofNat 64 (c + k) := by
  rw [BitVec.add_assoc, BitVec.ofNat_add_ofNat]

theorem addr_rec (P I : BitVec 64) (c : Nat) (hc : c < 2 ^ 32) :
    P + I * BitVec.ofNat 64 24 + BitVec.ofNat 64 c = P + BitVec.ofNat 64 (24 * I.toNat + c) := by
  rw [addr_mul2 P I 24 (by decide), addc]

/-! ## The cursor step -/

/-- `w = f(p, args); p = p + w; rest` with an exact length `K`. -/
theorem hoareGX_cstepE {Rf : BitVec 64 → Prop} {s0 : State σ} {Ret : ValueHOL 64 → Prop} {f : MlS}
    {args : List (ExpHOL 64)} {Pre : List (ValueHOL 64) → State σ → Prop}
    {R : List (ValueHOL 64) → State σ → BitVec 64 → Prop}
    {RetF : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop}
    (hf : FootRetS σ X f Pre R RetF) {Lk : List (MlS × ValueHOL 64)}
    (hw : (Lk.map Prod.fst).contains (nm "w") = false)
    (hpn : (Lk.map Prod.fst).contains (nm "p") = false)
    {D : BitVec 64} {c K : Nat} {rest : ProgHOL 64} {L' : Locals → Prop}
    (hcall : ∀ s : State σ, InCtx s X → LkAll Lk s.locals →
      s.locals.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 c))) → BWPost Rf s0 s →
      ∀ vs, evs s (lv (nm "p") :: args) = some vs → CallOK Rf Pre R s vs ∧
        ∀ callee v, RetF vs (callEntryStateHOLFinite s callee) v →
          v = .val (.word (BitVec.ofNat 64 K)))
    (hk : HoareG σ X (LPre Rf s0 (fun m => LkAll Lk m ∧
      m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 (c + K)))))) rest (LX Rf s0 L' Ret)) :
    HoareG σ X (LPre Rf s0 (fun m => LkAll Lk m ∧
      m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 c)))))
      (.seq (.call (some (some (.local, nm "w"), none)) f (lv (nm "p") :: args)) (.seq padv rest))
      (LX Rf s0 L' Ret) := by
  refine hoareGX_seq (L2 := fun m => LkAll Lk m ∧
    m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 c))) ∧
    m.lookup (nm "w") = some (.val (.word (BitVec.ofNat 64 K)))) ?_ (hoareGX_seq ?_ hk)
  · refine hoareGX_callA hf (fun s hs hp vs hvs => (hcall s hs hp.1.1 hp.1.2 hp.2 vs hvs).1) ?_
    intro s vs v callee hs hp hvs hR _
    have := (hcall s hs hp.1.1 hp.1.2 hp.2 vs hvs).2 callee v hR
    subst this
    exact ⟨lkAll_upd hp.1.1 hw _, by rw [lookup_update_ne _ _ (by decide)]; exact hp.1.2,
      lookup_update_self _ _ _⟩
  · refine hoareGX_assign fun s _ hp v hv => ?_
    rw [ev_add2 (ev_lw hp.1.2.1) (ev_lw hp.1.2.2)] at hv
    cases hv
    exact ⟨lkAll_upd hp.1.1 hpn _, by rw [lookup_update_self, addc]⟩

/-! ## The spec -/

def RA (vs : List (ValueHOL 64)) (s : State σ) (a : BitVec 64) : Prop :=
  ∃ D P N : BitVec 64, vs = [.val (.word D), .val (.word P), .val (.word N)] ∧
    Overlap D.toNat (9 + ALPf s.memory P N) a

theorem footS_tx_put_access_list (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootRetS σ X (nm "tx_put_access_list") (PreA ALPf) RA
      (fun vs s v => ∃ k, v = .val (.word (BitVec.ofNat 64 k)) ∧ k ≤ FA ALPf vs s) := by
  have hAL := footS_access_list_payload_len (σ := σ) hC
  have hLH := footS_rlp_list_header_len (σ := σ) hC
  have hEH := FootRetS.of_footRet (footRet_rlp_encode_list_header (σ := σ) hC hA)
  have hEB := FootRetS.of_footRet (footRet_rlp_encode_bytes (σ := σ) hC hA)
  refine footRetS_of_hoareGX fun vs body callee rs hl s0 hs0 hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A1, B1, C1, rfl, hsA, hsB, hsC, hla, hlb, hlc⟩ :=
    lookupCode_three code_tx_put_access_list (by decide) (by decide) (by decide) hl
  obtain ⟨D, P, N, hvs, hDle, hbel, hacc⟩ := hP
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  set m0 := s0.memory with hm0
  set AL := ALPf m0 P N with hALdef
  set H0 := Helpers.hdrLen AL with hH0
  have hse : scratchEnd < 2 ^ 63 := by decide
  have hH09 := hdrLen_le (n := AL) (by omega)
  have hRf : ∀ a, RA [.val (.word D), .val (.word P), .val (.word N)] s0 a ↔
      Overlap D.toNat (9 + AL) a := by
    intro a
    constructor
    · rintro ⟨D', P', N', he, h⟩
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at he
      obtain ⟨rfl, rfl, rfl⟩ := he
      exact h
    · exact fun h => ⟨D, P, N, rfl, h⟩
  have hD0 : s0.locals.lookup (nm "dst") = some (.val (.word D)) := by rw [hloc]; exact hla
  have hP0 : s0.locals.lookup (nm "recs") = some (.val (.word P)) := by rw [hloc]; exact hlb
  have hN0 : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hlc
  -- a footprint piece at `D + c`
  have hfoot : ∀ (c len : Nat) (a : BitVec 64), c + len ≤ 9 + AL →
      Overlap (D + BitVec.ofNat 64 c).toNat len a →
      RA [.val (.word D), .val (.word P), .val (.word N)] s0 a := by
    intro c len a hc h
    rw [toNat_addc (by omega)] at h
    exact (hRf a).2 (overlap_mono h (by omega) (by omega))
  have hcur : ∀ c, c ≤ 9 + AL → (D + BitVec.ofNat 64 c).toNat = D.toNat + c :=
    fun c _ => toNat_addc (by omega)
  have hnoF : ∀ (s : State σ) (vs : List (ValueHOL 64)), CallOK
      (RA [.val (.word D), .val (.word P), .val (.word N)] s0) (fun _ _ => True) NoF s vs :=
    fun _ _ _ => ⟨trivial, fun _ h => h.elim⟩
  let F0 : List (MlS × ValueHOL 64) :=
    [(nm "dst", .val (.word D)), (nm "recs", .val (.word P)), (nm "n", .val (.word N))]
  have hF0 : LkAll F0 s0.locals := lkAll_cons hD0 (lkAll_cons hP0 (lkAll_cons hN0 fun _ h => nomatch h))
  unfold tpaBody
  -- `var pl = access_list_payload_len(recs, n)`
  refine hoareGX_decCall (L' := fun _ _ => True) hAL (fun s _ _ vs _ => hnoF s vs) ?_
    (fun _ _ _ _ => trivial)
  intro s1 vs v1 callee _ hp1 hvs hR _
  rw [evs_cons (ev_lw (by rw [hp1.1]; exact hP0)) (evs_cons (ev_lw (by rw [hp1.1]; exact hN0))
    evs_nil)] at hvs
  cases hvs
  have hv1 := hR P N rfl
  subst hv1
  set AL1 := ALPf (callEntryStateHOLFinite s1 callee).memory P N with hAL1
  set H1 := Helpers.hdrLen (BitVec.ofNat 64 AL1).toNat with hH1
  have hH19 := (hdrLen_le (n := (BitVec.ofNat 64 AL1).toNat) (BitVec.isLt _)).2
  have hF1 : LkAll F0 (s1.locals.update (nm "pl", .val (.word (BitVec.ofNat 64 AL1)))) :=
    lkAll_upd (by rw [hp1.1]; exact hF0) rfl _
  -- `var w = rlp_encode_list_header(dst, pl)`
  refine hoareGX_decCall (L' := fun _ _ => True) hEH ?_ ?_ (fun _ _ _ _ => trivial)
  · intro s _ hp vs hvs callee
    rw [evs_cons (ev_lw (by rw [hp.1]; exact hF1.lk (by mem_tac)))
      (evs_cons (ev_lw (by rw [hp.1]; exact lookup_update_self _ _ _)) evs_nil)] at hvs
    cases hvs
    refine ⟨⟨D, rfl, fun N' hN' => by cases hN'; omega⟩, fun a ⟨D', N', hD', hN', hov⟩ => ?_⟩
    cases hD'
    cases hN'
    exact (hRf a).2 (overlap_mono hov (by omega) (by omega))
  intro s2 vs v2 callee _ hp2 hvs hR _
  rw [evs_cons (ev_lw (by rw [hp2.1]; exact hF1.lk (by mem_tac)))
    (evs_cons (ev_lw (by rw [hp2.1]; exact lookup_update_self _ _ _)) evs_nil)] at hvs
  cases hvs
  have hv2 := hR _ rfl
  subst hv2
  have hF2 : LkAll F0 (s2.locals.update (nm "w", .val (.word (BitVec.ofNat 64 H1)))) :=
    lkAll_upd (by rw [hp2.1]; exact hF1) rfl _
  -- `var p = dst + w; var i = 0`
  refine hoareGX_dec (L' := fun _ _ => True) (fun s3 _ hp3 v3 hv3 _ => ?_) (fun _ _ _ _ => trivial)
  rw [ev_add2 (ev_lw (by rw [hp3.1]; exact hF2.lk (by mem_tac)))
    (ev_lw (by rw [hp3.1]; exact lookup_update_self _ _ _))] at hv3
  cases hv3
  refine hoareGX_dec (L' := fun _ _ => True) (fun s4 _ hp4 v4 hv4 _ => ?_) (fun _ _ _ _ => trivial)
  rw [ev_cw] at hv4
  cases hv4
  -- the loop
  let J : Locals → Prop := fun m => LkAll F0 m ∧ ∃ I : BitVec 64,
    m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ N.toNat ∧
    m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 (H1 + alpS m0 P I.toNat))))
  refine hoareGX_pre (L' := J) ?_ (fun m hm => ?_)
  rotate_left
  · rw [hm, hp4.1]
    refine ⟨lkAll_upd (lkAll_upd (by rw [hp3.1]; exact hF2) rfl _) rfl _, BitVec.ofNat 64 0,
      lookup_update_self _ _ _, by simp, ?_⟩
    rw [lookup_update_ne _ _ (by decide), lookup_update_self,
      show alpS m0 P (BitVec.ofNat 64 0).toNat = 0 from rfl, Nat.add_zero]
  refine hoareGX_seq (L2 := fun m => J m ∧ ∀ I : BitVec 64,
    m.lookup (nm "i") = some (.val (.word I)) → N.toNat ≤ I.toNat) ?_ ?_
  rotate_left
  · refine hoareGX_return fun t _ ⟨⟨⟨hF, I, hI, hIN, hp⟩, hge⟩, _⟩ v hv => ?_
    rw [ev_sub2 (ev_lw hp) (ev_lw (hF.lk (by mem_tac)))] at hv
    cases hv
    refine ⟨H1 + AL, ?_, by show H1 + AL ≤ 9 + ALPf m0 P N; omega⟩
    have hIe : I.toNat = N.toNat := by have := hge I hI; omega
    rw [hIe, BitVec.add_comm, BitVec.add_sub_cancel]
    rfl
  refine hoareGX_while ?_ fun s _ hJ hc => ⟨hJ, fun I hI => ?_⟩
  rotate_left
  · exact lower_false (cmp_val_false hc (ev_lw hI) (ev_lw (hJ.1.lk (by mem_tac))))
  intro s hs ⟨hpre, hc⟩
  obtain ⟨hF, I, hI, hIN, hp⟩ := hpre.1
  have hlt : I.toNat < N.toNat := ltN_true (hF.lk (by mem_tac)) hI hc
  have hPN : P.toNat + 24 * N.toNat ≤ D.toNat := by rcases hbel with h | h <;> omega
  have hacc1 := accNs_le m0 P hlt
  have hacc2 := accSum_mono m0 P (le_refl N.toNat)
  have h33 : 33 * accNs m0 P I.toNat < 2 ^ 63 := by omega
  have hIn := alpI_toNat h33
  have hEn := alpE_toNat h33
  have hS1 : alpS m0 P (I.toNat + 1) ≤ AL := alpS_mono m0 P (by omega)
  have hT : alpS m0 P (I.toNat + 1) = alpS m0 P I.toNat +
      (Helpers.hdrLen (alpE m0 P I.toNat).toNat + (alpE m0 P I.toNat).toNat) := rfl
  have hhI := hdrLen_le (n := (alpI m0 P I.toNat).toNat) (BitVec.isLt _)
  have hhE := hdrLen_le (n := (alpE m0 P I.toNat).toNat) (BitVec.isLt _)
  refine (?_ : HoareG σ X (LPre (RA [.val (.word D), .val (.word P), .val (.word N)] s0)
    s0 (fun m => m = s.locals)) tpaLoop (LX (RA [.val (.word D), .val (.word P), .val (.word N)] s0)
      s0 J (fun _ => False))) s hs ⟨rfl, hpre.2⟩
  set c0 := H1 + alpS m0 P I.toNat with hc0
  set In := alpI m0 P I.toNat with hInD
  set En := alpE m0 P I.toNat with hEnD
  set hE := Helpers.hdrLen En.toNat with hhEdef
  set hIi := Helpers.hdrLen In.toNat with hhIdef
  set NS := rd m0 (P + BitVec.ofNat 64 (24 * I.toNat + 16)) with hNS
  have hNSn : NS.toNat = accNs m0 P I.toNat := rfl
  have hInv : In = BitVec.ofNat 64 33 * NS := rfl
  let G : List (MlS × ValueHOL 64) := (nm "i", .val (.word I)) :: F0
  have hG : LkAll G s.locals := lkAll_cons hI hF
  let Jn : Locals → Prop := fun m => LkAll F0 m ∧
    m.lookup (nm "i") = some (.val (.word (I + BitVec.ofNat 64 1))) ∧
    m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 (H1 + alpS m0 P (I.toNat + 1)))))
  have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
  have hJn : ∀ m, Jn m → J m := fun m ⟨h1, h2, h3⟩ => ⟨h1, _, h2, by omega, by rw [hI1]; exact h3⟩
  have hres : ∀ (x : MlS) (old : Option (ValueHOL 64)) (m : Locals),
      (F0.map Prod.fst).contains x = false → x ≠ nm "i" → x ≠ nm "p" → Jn m →
      Jn (m.resVarEq (x, old)) :=
    fun x old m hx h1 h2 ⟨e1, e2, e3⟩ => ⟨lkAll_res e1 hx old,
      by rw [lookup_resVarEq_ne _ _ h1]; exact e2, by rw [lookup_resVarEq_ne _ _ h2]; exact e3⟩
  refine hoareGX_post (L := Jn) ?_ hJn (fun _ h => h)
  unfold tpaLoop
  -- `var rec = recs + i * 24`
  refine hoareGX_dec (L' := fun _ m' => Jn m') ?_
    (fun m m' _ h => hres _ _ _ rfl (by decide) (by decide) h)
  intro s1 _ hp1 v hv _
  rw [ev_add2 (ev_lw (by rw [hp1.1]; exact hF.lk (by mem_tac)))
    (ev_mul2 (ev_lw (by rw [hp1.1]; exact hI)) (ev_cw _ 24))] at hv
  cases hv
  set Rc := P + I * BitVec.ofNat 64 24 with hRc
  -- `var ns = rec[16]`
  refine hoareGX_dec (L' := fun _ m' => Jn m') ?_
    (fun m m' _ h => hres _ _ _ rfl (by decide) (by decide) h)
  intro s2 hs2 hp2 v hv _
  have hl2 : s2.locals = s.locals.update (nm "rec", .val (.word Rc)) := by rw [hp2.1, hp1.1]
  obtain ⟨w0, hw0, hdom, rfl⟩ := Spec.ev_load_one hv
  rw [ev_add2 (ev_lw (by rw [hl2]; exact lookup_update_self _ _ _)) (ev_cw _ 16)] at hw0
  cases hw0
  have haddr : Rc + BitVec.ofNat 64 16 = P + BitVec.ofNat 64 (24 * I.toNat + 16) :=
    addr_rec P I 16 (by decide)
  have hal : (Rc + BitVec.ofNat 64 16).toNat % 8 = 0 := hA _ (by rw [← hs2.2.1]; exact hdom)
  have hw0n : (Rc + BitVec.ofNat 64 16).toNat = P.toNat + (24 * I.toNat + 16) := by
    rw [haddr, toNat_addc (by omega)]
  have hnot : ¬ RA [.val (.word D), .val (.word P), .val (.word N)] s0 (Rc + BitVec.ofNat 64 16) := by
    intro h
    obtain ⟨-, h1, -⟩ := (hRf _).1 h
    omega
  have hmem : s2.memory (Rc + BitVec.ofNat 64 16) = m0 (Rc + BitVec.ofNat 64 16) := hp2.2.2 _ hnot
  have hv' : ValueHOL.val (s2.memory (Rc + BitVec.ofNat 64 16)) = .val (.word NS) := by
    rw [hmem, haddr, hNS]
    unfold rd
    cases m0 (P + BitVec.ofNat 64 (24 * I.toNat + 16))
    rfl
  rw [hv']
  -- `var inner = 33 * ns`
  refine hoareGX_dec (L' := fun _ m' => Jn m') ?_
    (fun m m' _ h => hres _ _ _ rfl (by decide) (by decide) h)
  intro s3 _ hp3 v hv _
  have hl3 : s3.locals = (s.locals.update (nm "rec", .val (.word Rc))).update
      (nm "ns", .val (.word NS)) := by rw [hp3.1, hl2]
  rw [ev_mul2 (ev_cw _ 33) (ev_lw (by rw [hl3]; exact lookup_update_self _ _ _)), ← hInv] at hv
  cases hv
  -- `var ih = rlp_list_header_len(inner)`
  refine hoareGX_decCall (L' := fun _ m' => Jn m') hLH (fun s _ _ vs _ => hnoF s vs) ?_
    (fun m m' _ h => hres _ _ _ rfl (by decide) (by decide) h)
  intro s4 vs v callee _ hp4 hvs hR _
  have hl4 : s4.locals = ((s.locals.update (nm "rec", .val (.word Rc))).update
      (nm "ns", .val (.word NS))).update (nm "inner", .val (.word In)) := by rw [hp4.1, hl3]
  rw [evs_cons (ev_lw (by rw [hl4]; exact lookup_update_self _ _ _)) evs_nil] at hvs
  cases hvs
  have hv := hR In rfl
  subst hv
  -- the frame of the writes
  let G4 : List (MlS × ValueHOL 64) := (nm "ih", .val (.word (BitVec.ofNat 64 hIi))) ::
    (nm "inner", .val (.word In)) :: (nm "ns", .val (.word NS)) :: (nm "rec", .val (.word Rc)) :: G
  have hG4 : ∀ m, m = s4.locals.update (nm "ih", .val (.word (BitVec.ofNat 64 hIi))) →
      LkAll G4 m ∧ m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 c0))) := by
    intro m hm
    rw [hm, hl4]
    refine ⟨lkAll_cons (lookup_update_self _ _ _) (lkAll_upd (lkAll_cons (lookup_update_self _ _ _)
      (lkAll_upd (lkAll_cons (lookup_update_self _ _ _) (lkAll_upd (lkAll_cons
        (lookup_update_self _ _ _) (lkAll_upd hG rfl _)) rfl _)) rfl _)) rfl _), ?_⟩
    rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide),
      lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide)]
    exact hp
  refine hoareGX_pre (L' := fun m => LkAll G4 m ∧
    m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 c0)))) ?_ hG4
  have hEB21 : Helpers.hdrLen (BitVec.ofNat 64 20).toNat + (BitVec.ofNat 64 20).toNat = 21 := by decide
  have hEB33 : Helpers.hdrLen (BitVec.ofNat 64 32).toNat + (BitVec.ofNat 64 32).toNat = 33 := by decide
  -- `w = rlp_encode_list_header(p, 21 + ih + inner); p = p + w`
  refine hoareGX_cstepE (K := hE) hEH rfl rfl ?_ ?_
  · intro t _ hL hpt _ vs hvs
    have hEe : BitVec.ofNat 64 21 + (BitVec.ofNat 64 hIi + In) = En := rfl
    rw [evs_cons (ev_lw hpt) (evs_cons (ev_add3 (ev_cw _ 21) (ev_lw (hL.lk (by mem_tac)))
      (ev_lw (hL.lk (by mem_tac)))) evs_nil), hEe] at hvs
    cases hvs
    refine ⟨fun _ => ⟨⟨_, rfl, fun N' hN' => by cases hN'; rw [hcur c0 (by omega)]; omega⟩,
      fun a ⟨D', N', hD', hN', hov⟩ => ?_⟩, fun _ v hv => hv _ rfl⟩
    cases hD'
    cases hN'
    exact hfoot c0 hE a (by omega) hov
  -- `w = rlp_encode_bytes(p, rec[0], 20); p = p + w`
  refine hoareGX_cstepE (K := 21) hEB rfl rfl ?_ ?_
  · intro t _ hL hpt _ vs hvs
    obtain ⟨u0, vs1, rfl, hu0, hvs1⟩ := evs_cons_inv hvs
    rw [ev_lw hpt] at hu0
    cases hu0
    obtain ⟨x, vs2, rfl, -, hvs2⟩ := evs_cons_inv hvs1
    rw [evs_cons (ev_cw _ 20) evs_nil] at hvs2
    cases hvs2
    refine ⟨fun _ => ⟨⟨_, _, rfl, rfl, by rw [hcur (c0 + hE) (by omega)]; have := hEB21; omega⟩,
      fun a ⟨D', N', hD', hN', hov⟩ => ?_⟩, fun _ v hv => ?_⟩
    · cases hD'
      cases hN'
      rw [hEB21] at hov
      exact hfoot (c0 + hE) 21 a (by omega) hov
    · obtain ⟨k, rfl, -, -, hk⟩ := hv _ rfl
      rw [hk (by decide), hEB21]
  -- `w = rlp_encode_list_header(p, inner); p = p + w`
  refine hoareGX_cstepE (K := hIi) hEH rfl rfl ?_ ?_
  · intro t _ hL hpt _ vs hvs
    rw [evs_cons (ev_lw hpt) (evs_cons (ev_lw (hL.lk (by mem_tac))) evs_nil)] at hvs
    cases hvs
    refine ⟨fun _ => ⟨⟨_, rfl, fun N' hN' => by
      cases hN'; rw [hcur (c0 + hE + 21) (by omega)]; omega⟩,
      fun a ⟨D', N', hD', hN', hov⟩ => ?_⟩, fun _ v hv => hv _ rfl⟩
    cases hD'
    cases hN'
    exact hfoot (c0 + hE + 21) hIi a (by omega) hov
  -- `var keys = rec[8]; var j = 0`
  refine hoareGX_dec (L' := fun _ m' => Jn m') ?_
    (fun m m' _ h => hres _ _ _ rfl (by decide) (by decide) h)
  intro s5 _ hp5 Kv _ _
  refine hoareGX_dec (L' := fun _ m' => Jn m') ?_
    (fun m m' _ h => hres _ _ _ rfl (by decide) (by decide) h)
  intro s6 _ hp6 v hv _
  rw [ev_cw] at hv
  cases hv
  set base := c0 + hE + 21 + hIi with hbase
  let G5 : List (MlS × ValueHOL 64) := (nm "keys", Kv) :: G4
  have hG5 : LkAll G5 (s5.locals.update (nm "keys", Kv)) :=
    lkAll_cons (lookup_update_self _ _ _) (lkAll_upd hp5.1.1 rfl _)
  have hp6' : (s5.locals.update (nm "keys", Kv)).lookup (nm "p") =
      some (.val (.word (D + BitVec.ofNat 64 base))) := by
    rw [lookup_update_ne _ _ (by decide)]; exact hp5.1.2
  let J2 : Locals → Prop := fun m => LkAll G5 m ∧ ∃ Jv : BitVec 64,
    m.lookup (nm "j") = some (.val (.word Jv)) ∧ Jv.toNat ≤ NS.toNat ∧
    m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 (base + 33 * Jv.toNat))))
  refine hoareGX_pre (L' := J2) ?_ (fun m hm => ?_)
  rotate_left
  · rw [hm, hp6.1]
    refine ⟨lkAll_upd hG5 rfl _, BitVec.ofNat 64 0, lookup_update_self _ _ _, by simp, ?_⟩
    rw [lookup_update_ne _ _ (by decide), hp6']
    simp
  unfold tpaInner
  refine hoareGX_seq (L2 := fun m => J2 m ∧ ∀ Jv : BitVec 64,
    m.lookup (nm "j") = some (.val (.word Jv)) → NS.toNat ≤ Jv.toNat) ?_ ?_
  rotate_left
  · refine hoareGX_assign fun t _ ⟨⟨⟨hL, Jv, hj, hJN, hpj⟩, hge⟩, _⟩ v hv => ?_
    rw [ev_add2 (ev_lw (hL.lk (by mem_tac))) (ev_cw _ 1)] at hv
    cases hv
    have hJe : Jv.toNat = NS.toNat := by have := hge Jv hj; omega
    refine ⟨lkAll_upd (lkAll_tail (lkAll_tail (lkAll_tail (lkAll_tail (lkAll_tail
      (lkAll_tail hL)))))) rfl _, lookup_update_self _ _ _, ?_⟩
    rw [lookup_update_ne _ _ (by decide), hpj, hJe,
      show base + 33 * NS.toNat = H1 + alpS m0 P (I.toNat + 1) by omega]
  refine hoareGX_while ?_ fun t _ hJ hc => ⟨hJ, fun Jv hj => ?_⟩
  rotate_left
  · exact lower_false (cmp_val_false hc (ev_lw hj) (ev_lw (hJ.1.lk (by mem_tac))))
  intro t ht ⟨hpre2, hc2⟩
  obtain ⟨hL, Jv, hj, hJN, hpj⟩ := hpre2.1
  have hjlt : Jv.toNat < NS.toNat := ltN_true (hL.lk (by mem_tac)) hj hc2
  refine (?_ : HoareG σ X (LPre (RA [.val (.word D), .val (.word P), .val (.word N)] s0) s0
    (fun m => m = t.locals)) _ (LX (RA [.val (.word D), .val (.word P), .val (.word N)] s0) s0 J2
      (fun _ => False))) t ht ⟨rfl, hpre2.2⟩
  refine hoareGX_pre (L' := fun m => LkAll ((nm "j", .val (.word Jv)) :: G5) m ∧
    m.lookup (nm "p") = some (.val (.word (D + BitVec.ofNat 64 (base + 33 * Jv.toNat))))) ?_
    (fun m hm => by rw [hm]; exact ⟨lkAll_cons hj hL, hpj⟩)
  refine hoareGX_cstepE (K := 33) hEB rfl rfl ?_ ?_
  · intro u _ hLu hpu _ vs hvs
    obtain ⟨u0, vs1, rfl, hu0, hvs1⟩ := evs_cons_inv hvs
    rw [ev_lw hpu] at hu0
    cases hu0
    obtain ⟨x, vs2, rfl, -, hvs2⟩ := evs_cons_inv hvs1
    rw [evs_cons (ev_cw _ 32) evs_nil] at hvs2
    cases hvs2
    refine ⟨fun _ => ⟨⟨_, _, rfl, rfl, by rw [hcur (base + 33 * Jv.toNat) (by omega)]; have := hEB33; omega⟩,
      fun a ⟨D', N', hD', hN', hov⟩ => ?_⟩, fun _ v hv => ?_⟩
    · cases hD'
      cases hN'
      rw [hEB33] at hov
      exact hfoot (base + 33 * Jv.toNat) 33 a (by omega) hov
    · obtain ⟨k, rfl, -, -, hk⟩ := hv _ rfl
      rw [hk (by decide), hEB33]
  · refine hoareGX_assign fun u _ hpu v hv => ?_
    rw [ev_add2 (ev_lw (hpu.1.1.lk (by mem_tac))) (ev_cw _ 1)] at hv
    cases hv
    have hJ1 : (Jv + BitVec.ofNat 64 1).toNat = Jv.toNat + 1 := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
    refine ⟨lkAll_upd (lkAll_tail hpu.1.1) rfl _, Jv + BitVec.ofNat 64 1, lookup_update_self _ _ _,
      by omega, ?_⟩
    rw [lookup_update_ne _ _ (by decide), hpu.1.2, hJ1,
      show base + 33 * Jv.toNat + 33 = base + 33 * (Jv.toNat + 1) by ring]

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.footS_tx_put_access_list
