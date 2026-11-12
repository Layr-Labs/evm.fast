import InitECandidate.Solver.MemSafe.Ptx.PcmFun

/-!
# F3d: `validate_transaction` returns an intrinsic cost with `ic.0 <= TX_MAX_GAS_LIMIT = 2^24`

The code (`vtBody`) is generated; `validate_val` is the value fact that bounds the transaction's regular gas
(`mgas <= 2^24` for the message).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

def vt19 : ProgHOL 64 :=
  (.ite (.cmp .lower (cw 131072) (.load .one (.op .add [(lv (nm "tx")), (cw 200)]))) (.raise (nm "TxErr") (cw 62)) .skip)
def vt18 : ProgHOL 64 :=
  (.ite (.cmp .equal (.rfield 0 (lv (nm "nonce"))) (.op .sub [(cw 0), (cw 1)])) (.raise (nm "TxErr") (cw 65)) .skip)
def vt17 : ProgHOL 64 :=
  (.ite (.cmp .equal (lv (nm "fits")) (cw 0)) (.raise (nm "TxErr") (cw 65)) .skip)
def vt16 : ProgHOL 64 :=
  (.seq vt18 (.return (lv (nm "ic"))))
def vt15 : ProgHOL 64 :=
  (.seq vt17 vt16)
def vt14 : ProgHOL 64 :=
  (.decCall (nm "fits") .one (nm "u256_fits_word") [(lv (nm "nonce"))] vt15)
def vt13 : ProgHOL 64 :=
  (.ite (.cmp .lower (cw 16777216) (.rfield 2 (lv (nm "ic")))) (.raise (nm "TxErr") (cw 64)) .skip)
def vt12 : ProgHOL 64 :=
  (.dec (nm "nonce") (.comb [.one, .one, .one, .one]) (.load (.comb [.one, .one, .one, .one]) (.op .add [(lv (nm "tx")), (cw 16)])) vt14)
def vt11 : ProgHOL 64 :=
  (.ite (.cmp .lower (cw 16777216) (.rfield 0 (lv (nm "ic")))) (.raise (nm "TxErr") (cw 63)) .skip)
def vt10 : ProgHOL 64 :=
  (.seq vt13 vt12)
def vt9 : ProgHOL 64 :=
  (.ite (.cmp .equal (.load .one (.op .add [(lv (nm "tx")), (cw 152)])) (cw 0)) vt19 .skip)
def vt8 : ProgHOL 64 :=
  (.seq vt11 vt10)
def vt7 : ProgHOL 64 :=
  (.ite (.cmp .lower (lv (nm "gas")) (.rfield 2 (lv (nm "ic")))) (.raise (nm "TxErr") (cw 61)) .skip)
def vt6 : ProgHOL 64 :=
  (.seq vt9 vt8)
def vt5 : ProgHOL 64 :=
  (.ite (.cmp .lower (lv (nm "gas")) (.op .add [(.rfield 0 (lv (nm "ic"))), (.rfield 1 (lv (nm "ic")))])) (.raise (nm "TxErr") (cw 60)) .skip)
def vt4 : ProgHOL 64 :=
  (.seq vt7 vt6)
def vt3 : ProgHOL 64 :=
  (.ite (.cmp .lower (cw 4294967295) (lv (nm "gas"))) (.raise (nm "TxErr") (cw 66)) .skip)
def vt2 : ProgHOL 64 :=
  (.seq vt5 vt4)
def vt1 : ProgHOL 64 :=
  (.seq vt3 vt2)
def vt0 : ProgHOL 64 :=
  (.dec (nm "gas") .one (.load .one (.op .add [(lv (nm "tx")), (cw 144)])) vt1)
def vtBody : ProgHOL 64 :=
  (.decCall (nm "ic") (.comb [.one, .one, .one]) (nm "calculate_intrinsic_cost") [(lv (nm "tx")), (lv (nm "sender"))] vt0)
theorem vtEntry : fnEntry Guest.Software.guestFn_validate_transaction =
    ((nm "validate_transaction"), [((nm "tx"), .one), ((nm "sender"), .one)], vtBody, (.comb [.one, .one, .one])) := by
  conv => lhs; cbv
  conv => rhs; cbv
theorem vtCode : guestCode ((nm "validate_transaction")) =
    some ([((nm "tx"), .one), ((nm "sender"), .one)], vtBody, (.comb [.one, .one, .one])) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 346) (by decide)) ⟨_, rfl⟩ vtEntry


/-- The value fact. -/
def VtQ (r : Option (PanSemResultExact 64)) (_ : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ a b c : BitVec 64, v = wv [a, b, c] ∧ a.toNat ≤ 2 ^ 24

section vt
variable {A B C : BitVec 64}

/-- `ic` holds `<A, B, C>`; optionally `A ≤ 2^24`. -/
def Pk (A B C : BitVec 64) (bnd : Prop) (t : State σ) : Prop :=
  t.locals.lookup (nm "ic") = some (wv [A, B, C]) ∧ bnd

theorem vt_ev_ic {t : State σ} (h : t.locals.lookup (nm "ic") = some (wv [A, B, C])) (i : Nat)
    (hi : i < 3) : ev t (.rfield i (lv (nm "ic"))) = some (.val (.word ([A, B, C][i]'hi))) := by
  have : ev t (lv (nm "ic")) = some (wv [A, B, C]) := by rw [ev_lv]; exact h
  exact ev_rfield_wv this hi

theorem vt_guard {bnd : Prop} {c : ExpHOL 64} {x : MlS} {e : ExpHOL 64} {k : ProgHOL 64}
    {bnd' : Prop} (hb : ∀ t : State σ, Pk A B C bnd t → ev t c = some (.val (.word 0)) → bnd')
    (hk : Hoare σ guestCtx (Pk A B C bnd') k VtQ) :
    Hoare σ guestCtx (Pk A B C bnd) (.seq (.ite c (.raise x e) .skip) k) VtQ := by
  refine hoare_raiseGuard' (P := Pk A B C bnd) (Q := VtQ) ?_
  refine hoare_pre hk fun t _ ⟨hP, hc⟩ => ⟨hP.1, hb t hP hc⟩


theorem vt_cmp_false_lower {t : State σ} {c : Nat} {e : ExpHOL 64}
    (h : ev t (.cmp .lower (cw c) e) = some (.val (.word 0))) {w : BitVec 64}
    (hw : ev t e = some (.val (.word w))) (hc : c < 2 ^ 64) : w.toNat ≤ c := by
  obtain ⟨x, y, hx, hy, hf⟩ := cmp_false h
  rw [ev_cw] at hx
  rw [hw] at hy
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx hy
  subst hx hy
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, decide_eq_false_iff_not, BitVec.lt_def,
    BitVec.toNat_ofNat, Nat.mod_eq_of_lt hc] at hf
  omega

theorem vt_ret :
    Hoare σ guestCtx (Pk A B C (A.toNat ≤ 2 ^ 24)) (.return (lv (nm "ic"))) VtQ := by
  refine hoare_return fun s _ hP v hv => ?_
  intro v' hv'
  have : ev s (lv (nm "ic")) = some (wv [A, B, C]) := by rw [ev_lv]; exact hP.1
  rw [this] at hv
  cases hv
  cases hv'
  exact ⟨A, B, C, rfl, hP.2⟩


theorem vt_ite_keep {bnd : Prop} {c : ExpHOL 64} {a b : ProgHOL 64} {k : ProgHOL 64}
    (ha : Hoare σ guestCtx (fun s => Pk A B C bnd s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) a
      (fun r t => r = none ∧ Pk A B C bnd t))
    (hb : Hoare σ guestCtx (fun s => Pk A B C bnd s ∧ ev s c = some (.val (.word 0))) b
      (fun r t => r = none ∧ Pk A B C bnd t))
    (hk : Hoare σ guestCtx (Pk A B C bnd) k VtQ) :
    Hoare σ guestCtx (Pk A B C bnd) (.seq (.ite c a b) k) VtQ :=
  hoare_seqP (Spec.hoare_ite ha hb) hk

theorem vt_inner {bnd : Prop} {c c2 : ExpHOL 64} {k : ProgHOL 64} {x : MlS} {e : ExpHOL 64}
    (hk : Hoare σ guestCtx (Pk A B C bnd) k VtQ) :
    Hoare σ guestCtx (Pk A B C bnd) (.seq (.ite c (.ite c2 (.raise x e) .skip) .skip) k) VtQ :=
  vt_ite_keep (Spec.hoare_ite Spec.hoare_raise (Spec.hoare_skip fun s _ h => ⟨rfl, h.1.1⟩))
    (Spec.hoare_skip fun s _ h => ⟨rfl, h.1⟩) hk

theorem vt_set {bnd : Prop} {t : State σ} (h : Pk A B C bnd t) {n : MlS} (hn : n ≠ nm "ic")
    (v : ValueHOL 64) : Pk A B C bnd (setVarHOLFinite n v t) :=
  ⟨by rw [lk_set_ne t v hn]; exact h.1, h.2⟩

theorem vt_chain : Hoare σ guestCtx (Pk A B C True) vt0 VtQ := by
  have hBd := fun (t : State σ) => (rfl : (A.toNat ≤ 2 ^ 24) = (A.toNat ≤ 2 ^ 24))
  have h16 : Hoare σ guestCtx (Pk A B C (A.toNat ≤ 2 ^ 24)) vt16 VtQ := by
    unfold vt16 vt18
    exact vt_guard (fun _ hP _ => hP.2) vt_ret
  have h15 : Hoare σ guestCtx (Pk A B C (A.toNat ≤ 2 ^ 24)) vt15 VtQ := by
    unfold vt15 vt17
    exact vt_guard (fun _ hP _ => hP.2) h16
  have h14 : Hoare σ guestCtx (Pk A B C (A.toNat ≤ 2 ^ 24)) vt14 VtQ := by
    unfold vt14
    refine hoare_decCallS (funSpec_true (nm "u256_fits_word")) fun s hs hP vs hvs callee v st _ hst hsh => ?_
    refine hoare_post (hoare_pre h15 fun t _ ht => ?_) fun r t _ _ hq => hq
    subst ht
    exact ⟨by rw [lk_set_ne _ _ (by decide)]; exact hP.1, hP.2⟩
  have h12 : Hoare σ guestCtx (Pk A B C (A.toNat ≤ 2 ^ 24)) vt12 VtQ := by
    unfold vt12
    refine hoare_dec fun s hs hP v hv hsh => ?_
    refine hoare_post (hoare_pre h14 fun t _ ht => ?_) fun r t _ _ hq => hq
    subst ht
    exact vt_set hP (by decide) v
  have h10 : Hoare σ guestCtx (Pk A B C (A.toNat ≤ 2 ^ 24)) vt10 VtQ := by
    unfold vt10 vt13
    exact vt_guard (fun _ hP _ => hP.2) h12
  have h8 : Hoare σ guestCtx (Pk A B C True) vt8 VtQ := by
    unfold vt8 vt11
    refine vt_guard (bnd' := A.toNat ≤ 2 ^ 24) (fun t hP hc => ?_) h10
    exact vt_cmp_false_lower hc (vt_ev_ic hP.1 0 (by decide)) (by decide)
  have h6 : Hoare σ guestCtx (Pk A B C True) vt6 VtQ := by
    unfold vt6 vt9 vt19
    exact vt_inner h8
  have h4 : Hoare σ guestCtx (Pk A B C True) vt4 VtQ := by
    unfold vt4 vt7
    exact vt_guard (fun _ hP _ => hP.2) h6
  have h2 : Hoare σ guestCtx (Pk A B C True) vt2 VtQ := by
    unfold vt2 vt5
    exact vt_guard (fun _ hP _ => hP.2) h4
  have h1 : Hoare σ guestCtx (Pk A B C True) vt1 VtQ := by
    unfold vt1 vt3
    exact vt_guard (fun _ hP _ => hP.2) h2
  unfold vt0
  refine hoare_dec fun s hs hP v hv hsh => ?_
  refine hoare_post (hoare_pre h1 fun t _ ht => ?_) fun r t _ _ hq => hq
  subst ht
  exact vt_set hP (by decide) v

end vt


/-- **`validate_transaction` returns `<a, b, c>` with `a <= TX_MAX_GAS_LIMIT = 2^24`.** -/
theorem validate_val : FunSpec σ guestCtx (nm "validate_transaction")
    (fun _ _ r _ => ∀ v, r = .returned v → ∃ a b c : BitVec 64, v = wv [a, b, c] ∧ a.toNat ≤ 2 ^ 24) := by
  intro vs body callee rs hl s hs hloc r hr v hv
  subst hv
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, B, rfl, sa, sb, hA, hB⟩ := lookupCode_two vtCode (by decide) hl
  have H : Hoare σ guestCtx (fun t => t = s) vtBody VtQ := by
    unfold vtBody
    refine hoare_decCallS (funSpec_true (nm "calculate_intrinsic_cost")) fun s hs hP vs hvs callee v st _ hst hsh => ?_
    obtain ⟨ws, hlen, rfl⟩ := eq_wv_of_shapeEq' (k := 3) hsh
    obtain ⟨a, b, c, rfl⟩ : ∃ a b c, ws = [a, b, c] := by
      match ws, hlen with
      | [a, b, c], _ => exact ⟨a, b, c, rfl⟩
    refine hoare_post (hoare_pre (vt_chain (A := a) (B := b) (C := c)) fun t _ ht => ?_) fun r t _ _ hq => hq
    subst ht
    exact ⟨lk_set_self _ _ _, trivial⟩
  exact H s hs rfl (by rw [hr]; trivial) v (by rw [hr])

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.validate_val
