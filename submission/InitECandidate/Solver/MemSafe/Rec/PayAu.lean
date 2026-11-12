import InitECandidate.Solver.MemSafe.Rec.PayLen

set_option autoImplicit false

/-!
# Authorization payload lengths

* `plF m a`: `auth_payload_len(a)` (`tx_u256_encoded_len` of the chain id, `r`, `s`; 21 for the
  address; `rlp_word_encoded_len` of nonce and y-parity); `plF_le` (≤ 138), `plF_congr`.
* `AUPf m P N` (`aupS`): `Σ_{i<N} (hdrLen pl_i + pl_i)`; `AUPf_le` (≤ 147 N), `AUPf_congr`.
* `footS_auth_payload_len`, `footS_auth_list_payload_len`.
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

/-! ## The functions -/

/-- `tx_u256_encoded_len` of the four words at `x`. -/
def tuW (m : Mem) (x : BitVec 64) : Nat :=
  tuelF (Spec.Fq12.cellW m x) (Spec.Fq12.cellW m (x + BitVec.ofNat 64 8))
    (Spec.Fq12.cellW m (x + BitVec.ofNat 64 16)) (Spec.Fq12.cellW m (x + BitVec.ofNat 64 24))

/-- `auth_payload_len(a)`. -/
def plF (m : Mem) (a : BitVec 64) : Nat :=
  tuW m (a + BitVec.ofNat 64 0) + 21 + Helpers.wordLen (rd m (a + BitVec.ofNat 64 40)).toNat +
    Helpers.wordLen (rd m (a + BitVec.ofNat 64 48)).toNat + tuW m (a + BitVec.ofNat 64 56) +
    tuW m (a + BitVec.ofNat 64 88)

def aupT (m : Mem) (P : BitVec 64) (i : Nat) : Nat :=
  Helpers.hdrLen (plF m (P + BitVec.ofNat 64 (120 * i))) + plF m (P + BitVec.ofNat 64 (120 * i))

def aupS (m : Mem) (P : BitVec 64) : Nat → Nat
  | 0 => 0
  | n + 1 => aupS m P n + aupT m P n

/-- `auth_list_payload_len(P, N)`. -/
def AUPf (m : Mem) (P N : BitVec 64) : Nat := aupS m P N.toNat

theorem tuW_le (m : Mem) (x : BitVec 64) : tuW m x ≤ 33 := (tuelF_le _ _ _ _).2

theorem plF_le (m : Mem) (a : BitVec 64) : plF m a ≤ 138 := by
  unfold plF
  have := tuW_le m (a + BitVec.ofNat 64 0)
  have := tuW_le m (a + BitVec.ofNat 64 56)
  have := tuW_le m (a + BitVec.ofNat 64 88)
  have := (wordLen_le (rd m (a + BitVec.ofNat 64 40)).isLt).2
  have := (wordLen_le (rd m (a + BitVec.ofNat 64 48)).isLt).2
  omega

theorem aupT_le (m : Mem) (P : BitVec 64) (i : Nat) : aupT m P i ≤ 147 := by
  unfold aupT
  have := plF_le m (P + BitVec.ofNat 64 (120 * i))
  have := (hdrLen_le (n := plF m (P + BitVec.ofNat 64 (120 * i))) (by omega)).2
  omega

theorem aupS_le (m : Mem) (P : BitVec 64) : ∀ n, aupS m P n ≤ 147 * n
  | 0 => le_rfl
  | n + 1 => by
      simp only [aupS]
      have := aupS_le m P n
      have := aupT_le m P n
      omega

theorem AUPf_le (m : Mem) (P N : BitVec 64) : AUPf m P N ≤ 147 * N.toNat := aupS_le m P _

theorem cellW_congr {m m' : Mem} {c : BitVec 64} (h : m' c = m c) :
    Spec.Fq12.cellW m' c = Spec.Fq12.cellW m c := by
  unfold Spec.Fq12.cellW; rw [h]

/-- A cell `a + k + j` of a 120-byte record at `a`. -/
theorem off_toNat (a : BitVec 64) (k : Nat) (h : a.toNat + k < 2 ^ 64) :
    (a + BitVec.ofNat 64 k).toNat = a.toNat + k := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := k) (by omega),
    Nat.mod_eq_of_lt h]

theorem tuW_congr {m m' : Mem} {x : BitVec 64} (hx : x.toNat + 32 < 2 ^ 64)
    (h : ∀ y : BitVec 64, x.toNat ≤ y.toNat → y.toNat < x.toNat + 32 → m' y = m y) :
    tuW m' x = tuW m x := by
  unfold tuW
  have hc : ∀ k, k ≤ 24 → Spec.Fq12.cellW m' (x + BitVec.ofNat 64 k) =
      Spec.Fq12.cellW m (x + BitVec.ofNat 64 k) := fun k hk =>
    cellW_congr (h _ (by rw [off_toNat x k (by omega)]; omega) (by rw [off_toNat x k (by omega)]; omega))
  rw [cellW_congr (h x le_rfl (by omega)), hc 8 (by decide), hc 16 (by decide), hc 24 (by decide)]

theorem plF_congr {m m' : Mem} {a : BitVec 64} (ha : a.toNat + 120 < 2 ^ 64)
    (h : ∀ y : BitVec 64, a.toNat ≤ y.toNat → y.toNat < a.toNat + 120 → m' y = m y) :
    plF m' a = plF m a := by
  have hT : ∀ k, k ≤ 88 → tuW m' (a + BitVec.ofNat 64 k) = tuW m (a + BitVec.ofNat 64 k) := by
    intro k hk
    refine tuW_congr (by rw [off_toNat a k (by omega)]; omega) fun y h1 h2 => h y ?_ ?_
    · rw [off_toNat a k (by omega)] at h1; omega
    · rw [off_toNat a k (by omega)] at h2; omega
  have hW : ∀ k, k ≤ 112 → rd m' (a + BitVec.ofNat 64 k) = rd m (a + BitVec.ofNat 64 k) :=
    fun k hk => rd_congr' (h _ (by rw [off_toNat a k (by omega)]; omega)
      (by rw [off_toNat a k (by omega)]; omega))
  unfold plF
  rw [hT 0 (by decide), hT 56 (by decide), hT 88 (by decide), hW 40 (by decide), hW 48 (by decide)]

theorem aupS_congr {m m' : Mem} {P : BitVec 64} :
    ∀ n, (∀ i, i < n → plF m' (P + BitVec.ofNat 64 (120 * i)) = plF m (P + BitVec.ofNat 64 (120 * i))) →
      aupS m' P n = aupS m P n
  | 0, _ => rfl
  | n + 1, h => by
      simp only [aupS, aupT]
      rw [aupS_congr n (fun i hi => h i (by omega)), h n (by omega)]

theorem AUPf_congr {m m' : Mem} {P N : BitVec 64} (hw : P.toNat + 120 * N.toNat < 2 ^ 64)
    (h : ∀ x : BitVec 64, P.toNat ≤ x.toNat → x.toNat < P.toNat + 120 * N.toNat → m' x = m x) :
    AUPf m' P N = AUPf m P N := by
  refine aupS_congr _ fun i hi => ?_
  have e := off_toNat P (120 * i) (by omega)
  refine plF_congr (by rw [e]; omega) fun y h1 h2 => h y ?_ ?_
  · rw [e] at h1; omega
  · rw [e] at h2; omega

/-! ## `auth_payload_len` -/

def aplBody : ProgHOL 64 :=
  .decCall (nm "lc") .one (nm "tx_u256_encoded_len") [.load sh4 (.op .add [lv (nm "a"), cw 0])]
    (.decCall (nm "ln") .one (nm "rlp_word_encoded_len") [.load .one (.op .add [lv (nm "a"), cw 40])]
      (.decCall (nm "ly") .one (nm "rlp_word_encoded_len") [.load .one (.op .add [lv (nm "a"), cw 48])]
        (.decCall (nm "lr") .one (nm "tx_u256_encoded_len") [.load sh4 (.op .add [lv (nm "a"), cw 56])]
          (.decCall (nm "ls") .one (nm "tx_u256_encoded_len") [.load sh4 (.op .add [lv (nm "a"), cw 88])]
            (.return (.op .add [lv (nm "lc"), cw 21, lv (nm "ln"), lv (nm "ly"), lv (nm "lr"),
              lv (nm "ls")]))))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_auth_payload_len : fnEntry Guest.Software.guestFn_auth_payload_len =
    (nm "auth_payload_len", [(nm "a", .one)], aplBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_auth_payload_len : guestCode (nm "auth_payload_len") =
    some ([(nm "a", .one)], aplBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 324) (by decide)) ⟨_, rfl⟩
    entry_auth_payload_len

/-- A 4-word load. -/
theorem ev_ld4 {s : State σ} {a : ExpHOL 64} {v : ValueHOL 64} {w : BitVec 64}
    (ha : ev s a = some (.val (.word w))) (h : ev s (.load sh4 a) = some v) :
    v = wv [Spec.Fq12.cellW s.memory w, Spec.Fq12.cellW s.memory (w + BitVec.ofNat 64 8),
      Spec.Fq12.cellW s.memory (w + BitVec.ofNat 64 16),
      Spec.Fq12.cellW s.memory (w + BitVec.ofNat 64 24)] :=
  (Spec.Fq12.ev_load4_inv ha h).1

theorem add6 (a b c d e f : Nat) :
    BitVec.ofNat 64 a + (BitVec.ofNat 64 b + (BitVec.ofNat 64 c + (BitVec.ofNat 64 d +
      (BitVec.ofNat 64 e + (BitVec.ofNat 64 f + 0))))) = BitVec.ofNat 64 (a + b + c + d + e + f) := by
  have h0 : ∀ x : BitVec 64, x + 0 = x := fun x => by simp
  rw [h0, BitVec.ofNat_add_ofNat, BitVec.ofNat_add_ofNat, BitVec.ofNat_add_ofNat,
    BitVec.ofNat_add_ofNat, BitVec.ofNat_add_ofNat]
  congr 1
  omega

theorem footS_auth_payload_len (hC : X.code.lookup = guestCode) :
    FootRetS σ X (nm "auth_payload_len") (fun _ _ => True) NoF
      (fun vs s v => ∀ A : BitVec 64, vs = [.val (.word A)] →
        v = .val (.word (BitVec.ofNat 64 (plF s.memory A)))) := by
  have hT := footS_tx_u256_encoded_len (σ := σ) hC
  have hW := footS_rlp_word_encoded_len (σ := σ) hC
  refine footRetS_of_hoareGX fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, B, rfl, hsB, hlb⟩ := lookupCode_one code_auth_payload_len hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsB
  have hA0 : s0.locals.lookup (nm "a") = some (.val (.word A)) := by rw [hloc]; exact hlb
  set m0 := s0.memory
  have hok : ∀ (s : State σ) (vs : List (ValueHOL 64)),
      CallOK (fun _ => False) (fun _ _ => True) NoF s vs := fun _ _ _ => ⟨trivial, fun _ h => h⟩
  unfold aplBody
  -- `lc`
  refine hoareGX_decCall (L' := fun _ _ => True) hT (fun s _ _ vs _ => hok s vs) ?_
    (fun _ _ _ _ => trivial)
  intro s1 vs v1 callee _ hp1 hvs hR _
  have hm1 : s1.memory = m0 := mem_eq_of_bw hp1.2
  obtain ⟨v, vs', rfl, hv, hvs'⟩ := evs_cons_inv hvs
  rw [evs_nil] at hvs'
  cases hvs'
  have hv' := ev_ld4 (ev_add2 (ev_lw (by rw [hp1.1]; exact hA0)) (ev_cw _ 0)) hv
  subst hv'
  have hv1 := hR _ _ _ _ rfl
  subst hv1
  rw [hm1]
  -- `ln`
  refine hoareGX_decCall (L' := fun _ _ => True) hW (fun s _ _ vs _ => hok s vs) ?_
    (fun _ _ _ _ => trivial)
  intro s2 vs v2 callee _ hp2 hvs hR _
  have hm2 : s2.memory = m0 := mem_eq_of_bw hp2.2
  have hl2 : s2.locals.lookup (nm "a") = some (.val (.word A)) := by
    rw [hp2.1, lookup_update_ne _ _ (by decide), hp1.1]; exact hA0
  obtain ⟨v, vs', rfl, hv, hvs'⟩ := evs_cons_inv hvs
  rw [evs_nil] at hvs'
  cases hvs'
  have hv' := ev_ld1 (ev_add2 (ev_lw hl2) (ev_cw _ 40)) hv
  subst hv'
  have hv2 := hR _ rfl
  subst hv2
  rw [hm2]
  -- `ly`
  refine hoareGX_decCall (L' := fun _ _ => True) hW (fun s _ _ vs _ => hok s vs) ?_
    (fun _ _ _ _ => trivial)
  intro s3 vs v3 callee _ hp3 hvs hR _
  have hm3 : s3.memory = m0 := mem_eq_of_bw hp3.2
  have hl3 : s3.locals.lookup (nm "a") = some (.val (.word A)) := by
    rw [hp3.1, lookup_update_ne _ _ (by decide)]; exact hl2
  obtain ⟨v, vs', rfl, hv, hvs'⟩ := evs_cons_inv hvs
  rw [evs_nil] at hvs'
  cases hvs'
  have hv' := ev_ld1 (ev_add2 (ev_lw hl3) (ev_cw _ 48)) hv
  subst hv'
  have hv3 := hR _ rfl
  subst hv3
  rw [hm3]
  -- `lr`
  refine hoareGX_decCall (L' := fun _ _ => True) hT (fun s _ _ vs _ => hok s vs) ?_
    (fun _ _ _ _ => trivial)
  intro s4 vs v4 callee _ hp4 hvs hR _
  have hm4 : s4.memory = m0 := mem_eq_of_bw hp4.2
  have hl4 : s4.locals.lookup (nm "a") = some (.val (.word A)) := by
    rw [hp4.1, lookup_update_ne _ _ (by decide)]; exact hl3
  obtain ⟨v, vs', rfl, hv, hvs'⟩ := evs_cons_inv hvs
  rw [evs_nil] at hvs'
  cases hvs'
  have hv' := ev_ld4 (ev_add2 (ev_lw hl4) (ev_cw _ 56)) hv
  subst hv'
  have hv4 := hR _ _ _ _ rfl
  subst hv4
  rw [hm4]
  -- `ls`
  refine hoareGX_decCall (L' := fun _ _ => True) hT (fun s _ _ vs _ => hok s vs) ?_
    (fun _ _ _ _ => trivial)
  intro s5 vs v5 callee _ hp5 hvs hR _
  have hm5 : s5.memory = m0 := mem_eq_of_bw hp5.2
  have hl5 : s5.locals.lookup (nm "a") = some (.val (.word A)) := by
    rw [hp5.1, lookup_update_ne _ _ (by decide)]; exact hl4
  obtain ⟨v, vs', rfl, hv, hvs'⟩ := evs_cons_inv hvs
  rw [evs_nil] at hvs'
  cases hvs'
  have hv' := ev_ld4 (ev_add2 (ev_lw hl5) (ev_cw _ 88)) hv
  subst hv'
  have hv5 := hR _ _ _ _ rfl
  subst hv5
  rw [hm5]
  -- `return lc + 21 + ln + ly + lr + ls`
  refine hoareGX_return fun t _ hp v hv => ?_
  have h1 := hp.1
  rw [hp5.1, hp4.1, hp3.1, hp2.1] at h1
  rw [ev_op (xs := [_, BitVec.ofNat 64 21, _, _, _, _]) (evs_cons
    (ev_lw (by rw [h1, lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide),
      lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide), lookup_update_self]))
    (evs_cons (ev_cw _ 21)
    (evs_cons (ev_lw (by rw [h1, lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide),
      lookup_update_ne _ _ (by decide), lookup_update_self]))
    (evs_cons (ev_lw (by rw [h1, lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide),
      lookup_update_self]))
    (evs_cons (ev_lw (by rw [h1, lookup_update_ne _ _ (by decide), lookup_update_self]))
    (evs_cons (ev_lw (by rw [h1, lookup_update_self])) evs_nil))))))] at hv
  cases hv
  intro A' hA'
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hA'
  subst hA'
  show ValueHOL.val (HolWordLab.word (_ + (_ + (_ + (_ + (_ + (_ + 0))))))) = _
  rw [add6]
  rfl

/-! ## `auth_list_payload_len` -/

def aulLoop : ProgHOL 64 :=
  .decCall (nm "pl") .one (nm "auth_payload_len")
      [.op .add [lv (nm "recs"), .panop .mul [lv (nm "i"), cw 120]]]
    (.decCall (nm "h") .one (nm "rlp_list_header_len") [lv (nm "pl")]
      (.seq (.assign .local (nm "total") (.op .add [lv (nm "total"), lv (nm "h"), lv (nm "pl")]))
        (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))))

def aulBody : ProgHOL 64 :=
  .dec (nm "total") .one (cw 0)
    (.dec (nm "i") .one (cw 0)
      (.seq (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) aulLoop)
        (.return (lv (nm "total")))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_auth_list_payload_len : fnEntry Guest.Software.guestFn_auth_list_payload_len =
    (nm "auth_list_payload_len", [(nm "recs", .one), (nm "n", .one)], aulBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_auth_list_payload_len : guestCode (nm "auth_list_payload_len") =
    some ([(nm "recs", .one), (nm "n", .one)], aulBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 325) (by decide)) ⟨_, rfl⟩
    entry_auth_list_payload_len

theorem addr_mul2 (P I : BitVec 64) (k : Nat) (hk : k < 2 ^ 32) :
    P + I * BitVec.ofNat 64 k = P + BitVec.ofNat 64 (k * I.toNat) := by
  congr 1
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_mul, BitVec.toNat_ofNat, BitVec.toNat_ofNat,
    Nat.mod_eq_of_lt (a := k) (by omega), Nat.mul_comm]

def AulJ (m0 : Mem) (P N : BitVec 64) (m : Locals) : Prop :=
  m.lookup (nm "recs") = some (.val (.word P)) ∧ m.lookup (nm "n") = some (.val (.word N)) ∧
    ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ N.toNat ∧
      m.lookup (nm "total") = some (.val (.word (BitVec.ofNat 64 (aupS m0 P I.toNat))))

theorem footS_auth_list_payload_len (hC : X.code.lookup = guestCode) :
    FootRetS σ X (nm "auth_list_payload_len") (fun _ _ => True) NoF
      (fun vs s v => ∀ P N : BitVec 64, vs = [.val (.word P), .val (.word N)] →
        v = .val (.word (BitVec.ofNat 64 (AUPf s.memory P N)))) := by
  have hH := footS_rlp_list_header_len (σ := σ) hC
  have hPl := footS_auth_payload_len (σ := σ) hC
  refine footRetS_of_hoareGX fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hla, hlb⟩ :=
    lookupCode_two code_auth_list_payload_len (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsB
  have hP0 : s0.locals.lookup (nm "recs") = some (.val (.word P)) := by rw [hloc]; exact hla
  have hN0 : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hlb
  set m0 := s0.memory
  unfold aulBody
  refine hoareGX_dec (L' := fun _ _ => True) (fun s _ hp v hv _ => ?_) (fun _ _ _ _ => trivial)
  rw [ev_cw] at hv
  cases hv
  refine hoareGX_dec (L' := fun _ _ => True) (fun s' _ hp' v' hv' _ => ?_) (fun _ _ _ _ => trivial)
  rw [ev_cw] at hv'
  cases hv'
  refine hoareGX_pre (L' := AulJ m0 P N) ?_ (fun m hm => ?_)
  rotate_left
  · rw [hm, hp'.1, hp.1]
    refine ⟨?_, ?_, BitVec.ofNat 64 0, lookup_update_self _ _ _, by simp, ?_⟩
    · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide)]; exact hP0
    · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide)]; exact hN0
    · rw [lookup_update_ne _ _ (by decide), lookup_update_self]; rfl
  refine hoareGX_seq (L2 := fun m => AulJ m0 P N m ∧ ∀ I : BitVec 64,
    m.lookup (nm "i") = some (.val (.word I)) → N.toNat ≤ I.toNat) ?_ ?_
  rotate_left
  · refine hoareGX_return fun t _ ⟨⟨⟨_, _, I, hI, hIN, hT⟩, hge⟩, _⟩ v hv => ?_
    rw [ev_lw hT] at hv
    cases hv
    intro P' N' he
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at he
    obtain ⟨rfl, rfl⟩ := he
    have := hge I hI
    unfold AUPf
    rw [show I.toNat = N.toNat by omega]
  refine hoareGX_while ?_ fun s _ hJ hc => ⟨hJ, fun I hI => ?_⟩
  rotate_left
  · obtain ⟨-, hN, -⟩ := hJ
    exact lower_false (cmp_val_false hc (ev_lw hI) (ev_lw hN))
  intro s hs ⟨hpre, hc⟩
  obtain ⟨hP, hN, I, hI, hIN, hT⟩ := hpre.1
  have hlt : I.toNat < N.toNat := ltN_true hN hI hc
  refine (?_ : HoareG σ X (LPre (fun _ => False) s0 (fun m => m = s.locals)) aulLoop
    (LX (fun _ => False) s0 (AulJ m0 P N) (fun _ => False))) s hs ⟨rfl, hpre.2⟩
  let Jn : Locals → Prop := fun m => m.lookup (nm "recs") = some (.val (.word P)) ∧
    m.lookup (nm "n") = some (.val (.word N)) ∧
    m.lookup (nm "i") = some (.val (.word (I + BitVec.ofNat 64 1))) ∧
    m.lookup (nm "total") = some (.val (.word (BitVec.ofNat 64 (aupS m0 P (I.toNat + 1)))))
  have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
  have hJn : ∀ m, Jn m → AulJ m0 P N m := fun m ⟨h1, h2, h3, h4⟩ =>
    ⟨h1, h2, _, h3, by omega, by rw [hI1]; exact h4⟩
  have hres : ∀ (x : MlS) (old : Option (ValueHOL 64)) (m : Locals), x ≠ nm "recs" → x ≠ nm "n" →
      x ≠ nm "i" → x ≠ nm "total" → Jn m → Jn (m.resVarEq (x, old)) := by
    intro x old m h1 h2 h3 h4 ⟨e1, e2, e3, e4⟩
    exact ⟨by rw [lookup_resVarEq_ne _ _ h1]; exact e1, by rw [lookup_resVarEq_ne _ _ h2]; exact e2,
      by rw [lookup_resVarEq_ne _ _ h3]; exact e3, by rw [lookup_resVarEq_ne _ _ h4]; exact e4⟩
  refine hoareGX_post (L := Jn) ?_ hJn (fun _ h => h)
  unfold aulLoop
  -- `var pl = auth_payload_len(recs + i * 120)`
  refine hoareGX_decCall (L' := fun _ m' => Jn m') hPl (fun _ _ _ _ _ _ => ⟨trivial, fun _ h => h⟩) ?_
    (fun m m' _ h => hres _ _ _ (by decide) (by decide) (by decide) (by decide) h)
  intro s1 vs v callee _ hp1 hvs hR _
  have hl1 : s1.locals = s.locals := hp1.1
  have hm1 : s1.memory = m0 := mem_eq_of_bw hp1.2
  rw [evs_cons (ev_add2 (ev_lw (by rw [hl1]; exact hP)) (ev_mul2 (ev_lw (by rw [hl1]; exact hI))
    (ev_cw _ 120))) evs_nil, addr_mul2 P I 120 (by decide)] at hvs
  cases hvs
  have hv := hR _ rfl
  subst hv
  set Pl := plF m0 (P + BitVec.ofNat 64 (120 * I.toNat)) with hPl'
  have hPlv : (callEntryStateHOLFinite s1 callee).memory = m0 := hm1
  rw [hPlv]
  have hPl8 := plF_le m0 (P + BitVec.ofNat 64 (120 * I.toNat))
  have hPlt : (BitVec.ofNat 64 Pl).toNat = Pl := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  -- `var h = rlp_list_header_len(pl)`
  refine hoareGX_decCall (L' := fun _ m' => Jn m') hH (fun _ _ _ _ _ _ => ⟨trivial, fun _ h => h⟩) ?_
    (fun m m' _ h => hres _ _ _ (by decide) (by decide) (by decide) (by decide) h)
  intro s2 vs v callee _ hp2 hvs hR _
  have hl2 : s2.locals = s.locals.update (nm "pl", .val (.word (BitVec.ofNat 64 Pl))) := by
    rw [hp2.1, hl1]
  rw [evs_cons (ev_lw (by rw [hl2]; exact lookup_update_self _ _ _)) evs_nil] at hvs
  cases hvs
  have hv := hR _ rfl
  subst hv
  rw [hPlt]
  have lk : ∀ (y : MlS), y ≠ nm "pl" → y ≠ nm "h" → ∀ t : State σ,
      t.locals = (s.locals.update (nm "pl", .val (.word (BitVec.ofNat 64 Pl)))).update
        (nm "h", .val (.word (BitVec.ofNat 64 (Helpers.hdrLen Pl)))) →
      t.locals.lookup y = s.locals.lookup y := by
    intro y h1 h2 t ht
    rw [ht, lookup_update_ne _ _ (Ne.symm h2), lookup_update_ne _ _ (Ne.symm h1)]
  refine hoareGX_seq (L2 := fun m => m.lookup (nm "recs") = some (.val (.word P)) ∧
    m.lookup (nm "n") = some (.val (.word N)) ∧ m.lookup (nm "i") = some (.val (.word I)) ∧
    m.lookup (nm "total") = some (.val (.word (BitVec.ofNat 64 (aupS m0 P (I.toNat + 1)))))) ?_ ?_
  · refine hoareGX_assign fun s3 _ hp3 v hv => ?_
    have hl3 : s3.locals = (s.locals.update (nm "pl", .val (.word (BitVec.ofNat 64 Pl)))).update
        (nm "h", .val (.word (BitVec.ofNat 64 (Helpers.hdrLen Pl)))) := by rw [hp3.1, hl2]
    rw [ev_add3 (ev_lw (by rw [lk _ (by decide) (by decide) s3 hl3]; exact hT))
      (ev_lw (by rw [hl3]; exact lookup_update_self _ _ _))
      (ev_lw (by rw [hl3, lookup_update_ne _ _ (by decide)]; exact lookup_update_self _ _ _))] at hv
    cases hv
    refine ⟨?_, ?_, ?_, ?_⟩
    · rw [lookup_update_ne _ _ (by decide), lk _ (by decide) (by decide) s3 hl3]; exact hP
    · rw [lookup_update_ne _ _ (by decide), lk _ (by decide) (by decide) s3 hl3]; exact hN
    · rw [lookup_update_ne _ _ (by decide), lk _ (by decide) (by decide) s3 hl3]; exact hI
    · rw [lookup_update_self]
      congr 3
      show _ = BitVec.ofNat 64 (aupS m0 P I.toNat + (Helpers.hdrLen Pl + Pl))
      rw [BitVec.ofNat_add_ofNat, BitVec.ofNat_add_ofNat]
  · refine hoareGX_assign fun s6 _ hp6 v hv => ?_
    obtain ⟨e1, e2, e3, e4⟩ := hp6.1
    rw [ev_add2 (ev_lw e3) (ev_cw _ 1)] at hv
    cases hv
    exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact e1,
      by rw [lookup_update_ne _ _ (by decide)]; exact e2, lookup_update_self _ _ _,
      by rw [lookup_update_ne _ _ (by decide)]; exact e4⟩

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.footS_auth_payload_len
#print axioms InitECandidate.Solver.MemSafe.Rec.footS_auth_list_payload_len
#print axioms InitECandidate.Solver.MemSafe.Rec.AUPf_le
#print axioms InitECandidate.Solver.MemSafe.Rec.AUPf_congr
