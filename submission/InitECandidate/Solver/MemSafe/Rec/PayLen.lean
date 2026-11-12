import InitECandidate.Solver.MemSafe.Rec.PutU
import InitECandidate.Solver.MemSafe.Hooks.RecTx
import InitECandidate.Solver.Spec.Fq12.MemOps

set_option autoImplicit false

/-!
# Payload lengths of access lists and authorizations

Values as fixed functions of the record memory (mirroring the code, including its wrapping):

* `ALPf m P N` (`alpS`): `Σ_{i<N} (hdrLen e_i + e_i)`, `e_i = 21 + hdrLen in_i + in_i`
  (64-bit), `in_i = 33 · ns_i` (64-bit); `ALPf_le` (`≤ accSum` under `accSum < 2^63`),
  `ALPf_congr` (reads only `[P, P + 24 N)`);
* `plF m a`: `auth_payload_len(a)`; `AUPf m P N` (`aupS`): `Σ_{i<N} (hdrLen pl_i + pl_i)`;
  `AUPf_le` (`≤ 147 N`), `AUPf_congr`.

Value specs: `footS_access_list_payload_len`, `footS_auth_payload_len`,
`footS_auth_list_payload_len`.
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

/-! ## Access lists -/

def alpI (m : Mem) (P : BitVec 64) (i : Nat) : BitVec 64 :=
  BitVec.ofNat 64 33 * rd m (P + BitVec.ofNat 64 (24 * i + 16))

def alpE (m : Mem) (P : BitVec 64) (i : Nat) : BitVec 64 :=
  BitVec.ofNat 64 21 + (BitVec.ofNat 64 (Helpers.hdrLen (alpI m P i).toNat) + alpI m P i)

def alpT (m : Mem) (P : BitVec 64) (i : Nat) : Nat :=
  Helpers.hdrLen (alpE m P i).toNat + (alpE m P i).toNat

def alpS (m : Mem) (P : BitVec 64) : Nat → Nat
  | 0 => 0
  | n + 1 => alpS m P n + alpT m P n

/-- `access_list_payload_len(P, N)`. -/
def ALPf (m : Mem) (P N : BitVec 64) : Nat := alpS m P N.toNat

theorem alpT_le {m : Mem} {P : BitVec 64} {i : Nat} (h : 33 * accNs m P i < 2 ^ 63) :
    alpT m P i ≤ 39 + 33 * accNs m P i := by
  have hI : (alpI m P i).toNat = 33 * accNs m P i := by
    unfold alpI accNs at *
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 33) (by decide),
      Nat.mod_eq_of_lt (by omega)]
  have h1 := hdrLen_le (n := (alpI m P i).toNat) (by omega)
  have hb1 : (BitVec.ofNat 64 (Helpers.hdrLen (alpI m P i).toNat) + alpI m P i).toNat =
      Helpers.hdrLen (alpI m P i).toNat + (alpI m P i).toNat := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := Helpers.hdrLen _) (by omega),
      Nat.mod_eq_of_lt (by omega)]
  have hE : (alpE m P i).toNat = 21 + Helpers.hdrLen (alpI m P i).toNat + (alpI m P i).toNat := by
    unfold alpE
    rw [BitVec.toNat_add, hb1, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 21) (by decide),
      Nat.mod_eq_of_lt (by omega)]
    omega
  have h2 := hdrLen_le (n := (alpE m P i).toNat) (alpE m P i).isLt
  unfold alpT
  omega

theorem alpS_le (m : Mem) (P : BitVec 64) : ∀ n, accSum m P n < 2 ^ 63 → alpS m P n ≤ accSum m P n
  | 0, _ => le_rfl
  | n + 1, h => by
      simp only [alpS, accSum] at h ⊢
      have := alpS_le m P n (by omega)
      have := alpT_le (m := m) (P := P) (i := n) (by omega)
      omega

theorem ALPf_le (m : Mem) (P N : BitVec 64) (h : accSum m P N.toNat < 2 ^ 63) :
    ALPf m P N ≤ accSum m P N.toNat :=
  alpS_le m P _ h

theorem alpS_congr {m m' : Mem} {P : BitVec 64} :
    ∀ n, (∀ i, i < n → rd m' (P + BitVec.ofNat 64 (24 * i + 16)) =
      rd m (P + BitVec.ofNat 64 (24 * i + 16))) → alpS m' P n = alpS m P n
  | 0, _ => rfl
  | n + 1, h => by
      simp only [alpS]
      rw [alpS_congr n (fun i hi => h i (by omega))]
      have e : alpI m' P n = alpI m P n := by unfold alpI; rw [h n (by omega)]
      unfold alpT alpE
      rw [e]

theorem rd_congr' {m m' : Mem} {a : BitVec 64} (h : m' a = m a) : rd m' a = rd m a := by
  unfold rd; rw [h]

theorem ALPf_congr {m m' : Mem} {P N : BitVec 64} (hw : P.toNat + 24 * N.toNat < 2 ^ 64)
    (h : ∀ x : BitVec 64, P.toNat ≤ x.toNat → x.toNat < P.toNat + 24 * N.toNat → m' x = m x) :
    ALPf m' P N = ALPf m P N := by
  refine alpS_congr _ fun i hi => rd_congr' (h _ ?_ ?_)
  · rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 24 * i + 16) (by omega),
      Nat.mod_eq_of_lt (by omega)]
    omega
  · rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 24 * i + 16) (by omega),
      Nat.mod_eq_of_lt (by omega)]
    omega

/-! ### Code -/

def alpLoop : ProgHOL 64 :=
  .dec (nm "inner") .one (.panop .mul [cw 33, .load .one (.op .add [lv (nm "recs"),
      .panop .mul [lv (nm "i"), cw 24], cw 16])])
    (.decCall (nm "ih") .one (nm "rlp_list_header_len") [lv (nm "inner")]
      (.dec (nm "entry") .one (.op .add [cw 21, lv (nm "ih"), lv (nm "inner")])
        (.decCall (nm "eh") .one (nm "rlp_list_header_len") [lv (nm "entry")]
          (.seq (.assign .local (nm "total") (.op .add [lv (nm "total"), lv (nm "eh"), lv (nm "entry")]))
            (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))))))

def alpBody : ProgHOL 64 :=
  .dec (nm "total") .one (cw 0)
    (.dec (nm "i") .one (cw 0)
      (.seq (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) alpLoop)
        (.return (lv (nm "total")))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_access_list_payload_len : fnEntry Guest.Software.guestFn_access_list_payload_len =
    (nm "access_list_payload_len", [(nm "recs", .one), (nm "n", .one)], alpBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_access_list_payload_len : guestCode (nm "access_list_payload_len") =
    some ([(nm "recs", .one), (nm "n", .one)], alpBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 321) (by decide)) ⟨_, rfl⟩
    entry_access_list_payload_len

/-! ### Helpers -/

theorem ev_ld1 {s : State σ} {a : ExpHOL 64} {v : ValueHOL 64} {w : BitVec 64}
    (ha : ev s a = some (.val (.word w))) (h : ev s (.load .one a) = some v) :
    v = .val (.word (rd s.memory w)) := by
  obtain ⟨w', hw', -, hv⟩ := Spec.Mpt.Leaves.ev_load1_inv' h
  rw [ha] at hw'
  cases hw'
  exact hv

theorem addr_mul (P I : BitVec 64) (k c : Nat) (hk : k < 2 ^ 32) (hc : c < 2 ^ 32) :
    P + (I * BitVec.ofNat 64 k + BitVec.ofNat 64 c) = P + BitVec.ofNat 64 (k * I.toNat + c) := by
  congr 1
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat, BitVec.toNat_ofNat, BitVec.toNat_ofNat,
    Nat.mod_eq_of_lt (a := k) (by omega), Nat.mod_eq_of_lt (a := c) (by omega), Nat.mod_add_mod,
    Nat.mul_comm]

theorem ofNat_add_nat (a b : Nat) :
    BitVec.ofNat 64 a + BitVec.ofNat 64 b = BitVec.ofNat 64 (a + b) := BitVec.ofNat_add_ofNat a b

theorem mem_eq_of_bw {s0 s : State σ} (h : BWPost (fun _ => False) s0 s) : s.memory = s0.memory :=
  funext fun c => h.2 c id

/-! ### `access_list_payload_len` -/

/-- The loop state: `total = alpS i`. -/
def AlpJ (m0 : Mem) (P N : BitVec 64) (m : Locals) : Prop :=
  m.lookup (nm "recs") = some (.val (.word P)) ∧ m.lookup (nm "n") = some (.val (.word N)) ∧
    ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ N.toNat ∧
      m.lookup (nm "total") = some (.val (.word (BitVec.ofNat 64 (alpS m0 P I.toNat))))

theorem footS_access_list_payload_len (hC : X.code.lookup = guestCode) :
    FootRetS σ X (nm "access_list_payload_len") (fun _ _ => True) NoF
      (fun vs s v => ∀ P N : BitVec 64, vs = [.val (.word P), .val (.word N)] →
        v = .val (.word (BitVec.ofNat 64 (ALPf s.memory P N)))) := by
  have hH := footS_rlp_list_header_len (σ := σ) hC
  refine footRetS_of_hoareGX fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hla, hlb⟩ :=
    lookupCode_two code_access_list_payload_len (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsB
  have hP0 : s0.locals.lookup (nm "recs") = some (.val (.word P)) := by rw [hloc]; exact hla
  have hN0 : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hlb
  set m0 := s0.memory
  unfold alpBody
  refine hoareGX_dec (L' := fun _ _ => True) (fun s _ hp v hv _ => ?_) (fun _ _ _ _ => trivial)
  rw [ev_cw] at hv
  cases hv
  refine hoareGX_dec (L' := fun _ _ => True) (fun s' _ hp' v' hv' _ => ?_) (fun _ _ _ _ => trivial)
  rw [ev_cw] at hv'
  cases hv'
  refine hoareGX_pre (L' := AlpJ m0 P N) ?_ (fun m hm => ?_)
  rotate_left
  · rw [hm, hp'.1, hp.1]
    refine ⟨?_, ?_, BitVec.ofNat 64 0, lookup_update_self _ _ _, by simp, ?_⟩
    · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide)]; exact hP0
    · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide)]; exact hN0
    · rw [lookup_update_ne _ _ (by decide), lookup_update_self]; rfl
  refine hoareGX_seq (L2 := fun m => AlpJ m0 P N m ∧ ∀ I : BitVec 64,
    m.lookup (nm "i") = some (.val (.word I)) → N.toNat ≤ I.toNat) ?_ ?_
  rotate_left
  · refine hoareGX_return fun t _ ⟨⟨⟨_, _, I, hI, hIN, hT⟩, hge⟩, _⟩ v hv => ?_
    rw [ev_lw hT] at hv
    cases hv
    intro P' N' he
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at he
    obtain ⟨rfl, rfl⟩ := he
    have := hge I hI
    unfold ALPf
    rw [show I.toNat = N.toNat by omega]
  refine hoareGX_while ?_ fun s _ hJ hc => ⟨hJ, fun I hI => ?_⟩
  rotate_left
  · obtain ⟨-, hN, -⟩ := hJ
    exact lower_false (cmp_val_false hc (ev_lw hI) (ev_lw hN))
  intro s hs ⟨hpre, hc⟩
  obtain ⟨hP, hN, I, hI, hIN, hT⟩ := hpre.1
  have hlt : I.toNat < N.toNat := ltN_true hN hI hc
  have hm : s.memory = m0 := mem_eq_of_bw hpre.2
  refine (?_ : HoareG σ X (LPre (fun _ => False) s0 (fun m => m = s.locals)) alpLoop
    (LX (fun _ => False) s0 (AlpJ m0 P N) (fun _ => False))) s hs ⟨rfl, hpre.2⟩
  -- the iteration's result
  let Jn : Locals → Prop := fun m => m.lookup (nm "recs") = some (.val (.word P)) ∧
    m.lookup (nm "n") = some (.val (.word N)) ∧
    m.lookup (nm "i") = some (.val (.word (I + BitVec.ofNat 64 1))) ∧
    m.lookup (nm "total") = some (.val (.word (BitVec.ofNat 64 (alpS m0 P (I.toNat + 1)))))
  have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
  have hJn : ∀ m, Jn m → AlpJ m0 P N m := fun m ⟨h1, h2, h3, h4⟩ =>
    ⟨h1, h2, _, h3, by omega, by rw [hI1]; exact h4⟩
  have hres : ∀ (x : MlS) (old : Option (ValueHOL 64)) (m : Locals), x ≠ nm "recs" → x ≠ nm "n" →
      x ≠ nm "i" → x ≠ nm "total" → Jn m → Jn (m.resVarEq (x, old)) := by
    intro x old m h1 h2 h3 h4 ⟨e1, e2, e3, e4⟩
    exact ⟨by rw [lookup_resVarEq_ne _ _ h1]; exact e1, by rw [lookup_resVarEq_ne _ _ h2]; exact e2,
      by rw [lookup_resVarEq_ne _ _ h3]; exact e3, by rw [lookup_resVarEq_ne _ _ h4]; exact e4⟩
  refine hoareGX_post (L := Jn) ?_ hJn (fun _ h => h)
  unfold alpLoop
  -- `var inner = 33 * recs[i].ns`
  refine hoareGX_dec (L' := fun _ m' => Jn m') ?_
    (fun m m' _ h => hres _ _ _ (by decide) (by decide) (by decide) (by decide) h)
  intro s1 _ hp1 v hv _
  have hl1 : s1.locals = s.locals := hp1.1
  have hm1 : s1.memory = m0 := mem_eq_of_bw hp1.2
  obtain ⟨x, y, hx, hy, rfl⟩ := Spec.Mpt.Leaves.ev_mul2_inv' hv
  rw [ev_cw] at hx
  cases hx
  have hy' := ev_ld1 (ev_add3 (ev_lw (by rw [hl1]; exact hP))
    (ev_mul2 (ev_lw (by rw [hl1]; exact hI)) (ev_cw _ 24)) (ev_cw _ 16)) hy
  rw [addr_mul P I 24 16 (by decide) (by decide), hm1] at hy'
  cases hy'
  set In := alpI m0 P I.toNat with hIn
  -- `var ih = rlp_list_header_len(inner)`
  refine hoareGX_decCall (L' := fun _ m' => Jn m') hH (fun _ _ _ _ _ _ => ⟨trivial, fun _ h => h⟩) ?_
    (fun m m' _ h => hres _ _ _ (by decide) (by decide) (by decide) (by decide) h)
  intro s2 vs v callee _ hp2 hvs hR _
  have hl2 : s2.locals = s.locals.update (nm "inner", .val (.word In)) := by rw [hp2.1, hl1]; rfl
  rw [evs_cons (ev_lw (by rw [hl2]; exact lookup_update_self _ _ _)) evs_nil] at hvs
  cases hvs
  have hv := hR In rfl
  subst hv
  set Ih := BitVec.ofNat 64 (Helpers.hdrLen In.toNat) with hIh
  -- `var entry = 21 + ih + inner`
  refine hoareGX_dec (L' := fun _ m' => Jn m') ?_
    (fun m m' _ h => hres _ _ _ (by decide) (by decide) (by decide) (by decide) h)
  intro s3 _ hp3 v hv _
  have hl3 : s3.locals = (s.locals.update (nm "inner", .val (.word In))).update
      (nm "ih", .val (.word Ih)) := by rw [hp3.1, hl2]
  rw [ev_add3 (ev_cw _ 21) (ev_lw (by rw [hl3]; exact lookup_update_self _ _ _))
    (ev_lw (by rw [hl3, lookup_update_ne _ _ (by decide)]; exact lookup_update_self _ _ _))] at hv
  cases hv
  set En := alpE m0 P I.toNat with hEn
  -- `var eh = rlp_list_header_len(entry)`
  refine hoareGX_decCall (L' := fun _ m' => Jn m') hH (fun _ _ _ _ _ _ => ⟨trivial, fun _ h => h⟩) ?_
    (fun m m' _ h => hres _ _ _ (by decide) (by decide) (by decide) (by decide) h)
  intro s4 vs v callee _ hp4 hvs hR _
  have hl4 : s4.locals = ((s.locals.update (nm "inner", .val (.word In))).update
      (nm "ih", .val (.word Ih))).update (nm "entry", .val (.word En)) := by rw [hp4.1, hl3]; rfl
  rw [evs_cons (ev_lw (by rw [hl4]; exact lookup_update_self _ _ _)) evs_nil] at hvs
  cases hvs
  have hv := hR En rfl
  subst hv
  set Eh := BitVec.ofNat 64 (Helpers.hdrLen En.toNat) with hEh
  have lk : ∀ (y : MlS), y ≠ nm "inner" → y ≠ nm "ih" → y ≠ nm "entry" → y ≠ nm "eh" →
      ∀ t : State σ, t.locals = (((s.locals.update (nm "inner", .val (.word In))).update
        (nm "ih", .val (.word Ih))).update (nm "entry", .val (.word En))).update
          (nm "eh", .val (.word Eh)) → t.locals.lookup y = s.locals.lookup y := by
    intro y h1 h2 h3 h4 t ht
    rw [ht, lookup_update_ne _ _ (Ne.symm h4), lookup_update_ne _ _ (Ne.symm h3),
      lookup_update_ne _ _ (Ne.symm h2), lookup_update_ne _ _ (Ne.symm h1)]
  -- `total = total + eh + entry; i = i + 1`
  refine hoareGX_seq (L2 := fun m => m.lookup (nm "recs") = some (.val (.word P)) ∧
    m.lookup (nm "n") = some (.val (.word N)) ∧ m.lookup (nm "i") = some (.val (.word I)) ∧
    m.lookup (nm "total") = some (.val (.word (BitVec.ofNat 64 (alpS m0 P (I.toNat + 1)))))) ?_ ?_
  · refine hoareGX_assign fun s5 _ hp5 v hv => ?_
    have hl5 : s5.locals = (((s.locals.update (nm "inner", .val (.word In))).update
        (nm "ih", .val (.word Ih))).update (nm "entry", .val (.word En))).update
          (nm "eh", .val (.word Eh)) := by rw [hp5.1, hl4]
    rw [ev_add3 (ev_lw (by rw [lk _ (by decide) (by decide) (by decide) (by decide) s5 hl5]; exact hT))
      (ev_lw (by rw [hl5]; exact lookup_update_self _ _ _))
      (ev_lw (by rw [hl5, lookup_update_ne _ _ (by decide)]; exact lookup_update_self _ _ _))] at hv
    cases hv
    refine ⟨?_, ?_, ?_, ?_⟩
    · rw [lookup_update_ne _ _ (by decide), lk _ (by decide) (by decide) (by decide) (by decide) s5 hl5]
      exact hP
    · rw [lookup_update_ne _ _ (by decide), lk _ (by decide) (by decide) (by decide) (by decide) s5 hl5]
      exact hN
    · rw [lookup_update_ne _ _ (by decide), lk _ (by decide) (by decide) (by decide) (by decide) s5 hl5]
      exact hI
    · rw [lookup_update_self]
      congr 3
      rw [hEh]
      show _ = BitVec.ofNat 64 (alpS m0 P I.toNat + (Helpers.hdrLen En.toNat + En.toNat))
      apply BitVec.eq_of_toNat_eq
      have h9 := hdrLen_le (n := En.toNat) En.isLt
      rw [BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat,
        BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := Helpers.hdrLen En.toNat) (by omega)]
      omega
  · refine hoareGX_assign fun s6 _ hp6 v hv => ?_
    obtain ⟨e1, e2, e3, e4⟩ := hp6.1
    rw [ev_add2 (ev_lw e3) (ev_cw _ 1)] at hv
    cases hv
    exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact e1,
      by rw [lookup_update_ne _ _ (by decide)]; exact e2, lookup_update_self _ _ _,
      by rw [lookup_update_ne _ _ (by decide)]; exact e4⟩

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.footS_access_list_payload_len
#print axioms InitECandidate.Solver.MemSafe.Rec.ALPf_le
#print axioms InitECandidate.Solver.MemSafe.Rec.ALPf_congr
