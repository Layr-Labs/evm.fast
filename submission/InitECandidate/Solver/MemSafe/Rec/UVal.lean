import InitECandidate.Solver.MemSafe.Rec.FootS
import InitECandidate.Solver.MemSafe.WaveHelpers.BitLen
import InitECandidate.Solver.Spec.RlpValidate
import InitECandidate.Solver.MemSafe.Helpers.PureF

set_option autoImplicit false

/-!
# Byte lengths as fixed functions of the argument

The guest computes `u256_byte_length` by halving (`bit_length64`). Its value is the function
`ubyF` that mirrors the code (`blS` one halving step, `blF`, `ublF`), bounded by `32`
(`ubyF_le`). Value specs (`FootRetS`, empty footprint):

* `footS_bit_length64` (`blF`), `footS_u256_bit_length` (`ublF`), `footS_u256_byte_length`
  (`ubyF`), `footS_u256_limb` (limb `0` on index `0`);
* `footS_tx_u256_encoded_len` (`tuelF`: `1` for `0` and for a one-byte value `< 128`, else
  `1 + ubyF`), `footS_rlp_word_encoded_len` (`wordLen`), `footS_rlp_list_header_len`
  (`hdrLen`).
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

variable {σ : Type} {X : Ctx 64}

/-! ## The functions -/

/-- One halving step of `bit_length64`: `if (x >>> k) != 0 { n = n + k; x = x >>> k; }`. -/
def blS (k : Nat) (p : BitVec 64 × BitVec 64) : BitVec 64 × BitVec 64 :=
  if p.2 >>> k = 0 then p else (p.1 + BitVec.ofNat 64 k, p.2 >>> k)

def blP (x : BitVec 64) : BitVec 64 × BitVec 64 :=
  blS 1 (blS 2 (blS 4 (blS 8 (blS 16 (blS 32 (0, x))))))

def blF (x : BitVec 64) : BitVec 64 := (blP x).1 + (blP x).2

def ublF (a0 a1 a2 a3 : BitVec 64) : BitVec 64 :=
  if a3 ≠ 0 then BitVec.ofNat 64 192 + blF a3 else if a2 ≠ 0 then BitVec.ofNat 64 128 + blF a2
  else if a1 ≠ 0 then BitVec.ofNat 64 64 + blF a1 else blF a0

def ubyF (a0 a1 a2 a3 : BitVec 64) : BitVec 64 :=
  (ublF a0 a1 a2 a3 + BitVec.ofNat 64 7) >>> (3 : Nat)

/-- `tx_u256_encoded_len`. -/
def tuelF (a0 a1 a2 a3 : BitVec 64) : Nat :=
  if (ubyF a0 a1 a2 a3).toNat = 0 then 1
  else if (ubyF a0 a1 a2 a3).toNat = 1 ∧ a0.toNat < 128 then 1 else 1 + (ubyF a0 a1 a2 a3).toNat

theorem blS_le {k M : Nat} (hk : k ≤ 32) (hM : M + k < 2 ^ 64) {p : BitVec 64 × BitVec 64}
    (h2 : p.2.toNat < 2 ^ (2 * k)) (h1 : p.1.toNat ≤ M) :
    (blS k p).2.toNat < 2 ^ k ∧ (blS k p).1.toNat ≤ M + k := by
  unfold blS
  split
  · rename_i h0
    have : (p.2 >>> k).toNat = 0 := by rw [h0]; rfl
    rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow] at this
    exact ⟨(Nat.div_eq_zero_iff_lt (Nat.two_pow_pos k)).mp this, by omega⟩
  · refine ⟨?_, ?_⟩
    · show (p.2 >>> k).toNat < 2 ^ k
      rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]
      have : 2 ^ (2 * k) = 2 ^ k * 2 ^ k := by rw [← Nat.pow_add]; congr 1; omega
      rw [this] at h2
      exact Nat.div_lt_of_lt_mul h2
    · show (p.1 + BitVec.ofNat 64 k).toNat ≤ M + k
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := k) (by omega)]
      omega

theorem blF_le (x : BitVec 64) : (blF x).toNat ≤ 64 := by
  have h0 : ((0 : BitVec 64), x).2.toNat < 2 ^ (2 * 32) := x.isLt
  have h00 : ((0 : BitVec 64), x).1.toNat ≤ 0 := by simp
  obtain ⟨a1, b1⟩ := blS_le (k := 32) (M := 0) (by decide) (by decide) h0 h00
  obtain ⟨a2, b2⟩ := blS_le (k := 16) (M := 0 + 32) (by decide) (by decide) a1 b1
  obtain ⟨a3, b3⟩ := blS_le (k := 8) (M := 0 + 32 + 16) (by decide) (by decide) a2 b2
  obtain ⟨a4, b4⟩ := blS_le (k := 4) (M := 0 + 32 + 16 + 8) (by decide) (by decide) a3 b3
  obtain ⟨a5, b5⟩ := blS_le (k := 2) (M := 0 + 32 + 16 + 8 + 4) (by decide) (by decide) a4 b4
  obtain ⟨a6, b6⟩ := blS_le (k := 1) (M := 0 + 32 + 16 + 8 + 4 + 2) (by decide) (by decide) a5 b5
  unfold blF blP
  rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
  omega

theorem ublF_le (a0 a1 a2 a3 : BitVec 64) : (ublF a0 a1 a2 a3).toNat ≤ 256 := by
  unfold ublF
  have e : ∀ (k : Nat) (x : BitVec 64), k ≤ 192 → (BitVec.ofNat 64 k + blF x).toNat ≤ k + 64 := by
    intro k x hk
    have := blF_le x
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := k) (by omega),
      Nat.mod_eq_of_lt (by omega)]
    omega
  split
  · exact e 192 a3 le_rfl
  · split
    · have := e 128 a2 (by decide); omega
    · split
      · have := e 64 a1 (by decide); omega
      · have := blF_le a0; omega

theorem ubyF_le (a0 a1 a2 a3 : BitVec 64) : (ubyF a0 a1 a2 a3).toNat ≤ 32 := by
  unfold ubyF
  have := ublF_le a0 a1 a2 a3
  rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow, BitVec.toNat_add, BitVec.toNat_ofNat,
    Nat.mod_eq_of_lt (a := 7) (by decide), Nat.mod_eq_of_lt (by omega)]
  omega

theorem tuelF_le (a0 a1 a2 a3 : BitVec 64) : 1 ≤ tuelF a0 a1 a2 a3 ∧ tuelF a0 a1 a2 a3 ≤ 33 := by
  have := ubyF_le a0 a1 a2 a3
  unfold tuelF
  split
  · omega
  · split <;> omega

/-! ## Values -/

theorem wv4_inj {a0 a1 a2 a3 b0 b1 b2 b3 : BitVec 64}
    (h : wv [a0, a1, a2, a3] = wv [b0, b1, b2, b3]) : a0 = b0 ∧ a1 = b1 ∧ a2 = b2 ∧ a3 = b3 := by
  have := wv_inj h
  simp only [List.cons.injEq] at this
  exact ⟨this.1, this.2.1, this.2.2.1, this.2.2.2.1⟩

theorem wv4_of_shape {A : ValueHOL 64}
    (h : shapeEqHOL (.comb [.one, .one, .one, .one]) (shapeOfHOLExact A) = true) :
    ∃ a0 a1 a2 a3, A = wv [a0, a1, a2, a3] := by
  obtain ⟨ws, hl, rfl⟩ := eq_wv_of_shapeEq (k := 4) h
  obtain ⟨a0, a1, a2, a3, rfl⟩ := list4 hl
  exact ⟨a0, a1, a2, a3, rfl⟩

/-- The empty footprint. -/
abbrev NoF (_ : List (ValueHOL 64)) (_ : State σ) (_ : BitVec 64) : Prop := False

/-- A value spec: no precondition, no footprint. -/
abbrev VSpec (σ : Type) (X : Ctx 64) (f : MlS) (Ret : List (ValueHOL 64) → ValueHOL 64 → Prop) :
    Prop :=
  FootRetS σ X f (fun _ _ => True) NoF (fun vs _ v => Ret vs v)

theorem cmpT {s : State σ} {o : Cmp} {a b : ExpHOL 64} {x y : BitVec 64}
    (hc : ∃ w, ev s (.cmp o a b) = some (.val (.word w)) ∧ w ≠ 0)
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y))) :
    wordCmpHOL o x y = true := by
  obtain ⟨w, hw, hw0⟩ := hc
  exact cmp_val_true hw hw0 ha hb

/-! ### `bit_length64` -/

def BLX (p : BitVec 64 × BitVec 64) (m : Locals) : Prop :=
  m.lookup (nm "n") = some (.val (.word p.1)) ∧ m.lookup (nm "x") = some (.val (.word p.2))

theorem blx_step {Rf : BitVec 64 → Prop} {s0 : State σ} {Ret : ValueHOL 64 → Prop} (k : Nat)
    (hk : k < 64) (p : BitVec 64 × BitVec 64) :
    HoareG σ X (LPre Rf s0 (BLX p)) (WaveHelpers.blStep k) (LX Rf s0 (BLX (blS k p)) Ret) := by
  unfold WaveHelpers.blStep
  refine hoareGX_ite ?_ ?_
  · refine hoareG_pre (P := LPre Rf s0 (fun m => BLX p m ∧ p.2 >>> k ≠ 0)) ?_ ?_
    · refine hoareGX_seq (L2 := fun m => m.lookup (nm "n") =
          some (.val (.word (p.1 + BitVec.ofNat 64 k))) ∧
          m.lookup (nm "x") = some (.val (.word p.2)) ∧ p.2 >>> k ≠ 0) ?_ ?_
      · refine hoareGX_assign fun s _ hp v hv => ?_
        obtain ⟨⟨hn, hx⟩, hne⟩ := hp.1
        rw [ev_add2 (ev_lw hn) (ev_cw _ k)] at hv
        cases hv
        exact ⟨lookup_update_self _ _ _, by rw [lookup_update_ne _ _ (by decide)]; exact hx, hne⟩
      · refine hoareGX_assign fun s _ hp v hv => ?_
        obtain ⟨hn, hx, hne⟩ := hp.1
        rw [WaveHelpers.ev_lsr (ev_lw hx) hk] at hv
        cases hv
        unfold BLX blS
        rw [if_neg hne]
        exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hn, lookup_update_self _ _ _⟩
    · intro s _ ⟨hp, hc⟩
      refine ⟨⟨hp.1, ?_⟩, hp.2⟩
      have := notEqual_true (cmpT hc (WaveHelpers.ev_lsr (ev_lw hp.1.2) hk) (ev_cw _ 0))
      exact this
  · refine hoareG_pre (P := LPre Rf s0 (BLX (blS k p))) (hoareGX_skip fun _ h => h) ?_
    intro s _ ⟨hp, hc⟩
    have h0 := notEqual_false (cmp_val_false hc (WaveHelpers.ev_lsr (ev_lw hp.1.2) hk) (ev_cw _ 0))
    refine ⟨?_, hp.2⟩
    unfold blS
    rw [if_pos (show p.2 >>> k = 0 from h0)]
    exact hp.1

theorem footS_bit_length64 (hC : X.code.lookup = guestCode) :
    VSpec σ X (nm "bit_length64")
      (fun vs v => ∀ x : BitVec 64, vs = [.val (.word x)] → v = .val (.word (blF x))) := by
  refine footRetS_of_hoareGX fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsA, hA⟩ := lookupCode_one WaveHelpers.code_bit_length64 hl
  obtain ⟨V, rfl⟩ := val_of_shapeEq_one hsA
  have hx : s0.locals.lookup (nm "x") = some (.val (.word V)) := by rw [hloc]; exact hA
  unfold WaveHelpers.blBody
  refine hoareGX_dec (L' := fun _ _ => True) (fun s _ hp v hv _ => ?_) (fun _ _ _ _ => trivial)
  rw [ev_cw] at hv
  cases hv
  refine hoareGX_pre (L' := BLX (0, V)) ?_ (fun m hm => ?_)
  · refine hoareGX_seq (blx_step 32 (by decide) _) ?_
    refine hoareGX_seq (blx_step 16 (by decide) _) ?_
    refine hoareGX_seq (blx_step 8 (by decide) _) ?_
    refine hoareGX_seq (blx_step 4 (by decide) _) ?_
    refine hoareGX_seq (blx_step 2 (by decide) _) ?_
    refine hoareGX_seq (blx_step 1 (by decide) _) ?_
    refine hoareGX_return fun t _ hp w hw => ?_
    rw [ev_add2 (ev_lw hp.1.1) (ev_lw hp.1.2)] at hw
    cases hw
    intro x hxe
    cases hxe
    rfl
  · subst hm
    refine ⟨lookup_update_self _ _ _, ?_⟩
    rw [lookup_update_ne _ _ (by decide), hp.1]
    exact hx

/-! ### `u256_bit_length` / `u256_byte_length` -/

theorem footS_u256_bit_length (hC : X.code.lookup = guestCode) :
    VSpec σ X (nm "u256_bit_length")
      (fun vs v => ∀ a0 a1 a2 a3 : BitVec 64, vs = [wv [a0, a1, a2, a3]] →
        v = .val (.word (ublF a0 a1 a2 a3))) := by
  have hB := footS_bit_length64 (σ := σ) hC
  refine footRetS_of_hoareGX fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsA, hA⟩ := lookupCode_one WaveHelpers.code_u256_bit_length hl
  obtain ⟨a0, a1, a2, a3, rfl⟩ := wv4_of_shape hsA
  have ha : s0.locals.lookup (nm "a") = some (wv [a0, a1, a2, a3]) := by rw [hloc]; exact hA
  let Ret : ValueHOL 64 → Prop := fun v => ∀ b0 b1 b2 b3 : BitVec 64,
    [wv [a0, a1, a2, a3]] = [wv [b0, b1, b2, b3]] → v = .val (.word (ublF b0 b1 b2 b3))
  have hRet : ∀ w, w = ublF a0 a1 a2 a3 → Ret (.val (.word w)) := by
    intro w hw b0 b1 b2 b3 hb
    obtain ⟨rfl, rfl, rfl, rfl⟩ := wv4_inj (List.cons.inj hb).1
    rw [hw]
  have hev : ∀ (s : State σ) (j : Nat) (hj : j < 4), s.locals = s0.locals →
      ev s (.rfield j (lv (nm "a"))) = some (.val (.word [a0, a1, a2, a3][j])) := by
    intro s j hj hs
    exact ev_rfield_wv (by rw [ev_lv, hs]; exact ha) (by simpa using hj)
  -- a branch `if a.j != 0 { var nk = bit_length64(a.j); return k + nk; }`
  have hbr : ∀ (j k : Nat) (nk : String) (aj : BitVec 64) (hj : j < 4)
      (haj : [a0, a1, a2, a3][j] = aj) (φ : Prop),
      (φ → aj ≠ 0 → BitVec.ofNat 64 k + blF aj = ublF a0 a1 a2 a3) →
      HoareG σ X (LPre (fun _ => False) s0 (fun m => m = s0.locals ∧ φ))
        (WaveHelpers.ublBranch j k nk)
        (LX (fun _ => False) s0 (fun m => m = s0.locals ∧ φ ∧ aj = 0) Ret) := by
    intro j k nk aj hj haj φ hval
    have hev' : ∀ (s : State σ), s.locals = s0.locals →
        ev s (.rfield j (lv (nm "a"))) = some (.val (.word aj)) := by
      intro s hs; rw [hev s j hj hs, haj]
    unfold WaveHelpers.ublBranch
    refine hoareGX_ite ?_ ?_
    · refine hoareGX_preC (L' := fun m => m = s0.locals ∧ φ ∧ aj ≠ 0)
        (hoareGX_decCall (L' := fun _ _ => False) hB ?_ ?_ (fun _ _ _ h => h.elim)) ?_
      · intro s _ _ vs _ callee
        exact ⟨trivial, fun _ h => h⟩
      · intro s vs v callee _ ⟨⟨hs, hφ, hne⟩, _⟩ hvs hR _
        rw [evs_cons (hev' s hs) evs_nil] at hvs
        cases hvs
        have hv := hR _ rfl
        subst hv
        refine hoareGX_return fun t _ hp w hw => ?_
        rw [ev_add2 (ev_cw _ k) (ev_lw (by rw [hp.1]; exact lookup_update_self _ _ _))] at hw
        cases hw
        exact hRet _ (hval hφ hne)
      · intro s ⟨hs, hφ⟩ hc
        exact ⟨hs, hφ, notEqual_true (cmpT hc (hev' s hs) (ev_cw _ 0))⟩
    · refine hoareGX_preC (hoareGX_skip fun _ h => h) ?_
      intro s ⟨hs, hφ⟩ hc
      exact ⟨hs, hφ, notEqual_false (cmp_val_false hc (hev' s hs) (ev_cw _ 0))⟩
  unfold WaveHelpers.ublBody
  refine hoareGX_pre (L' := fun m => m = s0.locals ∧ True) ?_ (fun m hm => ⟨hm, trivial⟩)
  refine hoareGX_seq (hbr 3 192 "n3" a3 (by decide) rfl True fun _ h3 => by
    show _ = ublF a0 a1 a2 a3
    unfold ublF; rw [if_pos h3]) ?_
  refine hoareGX_pre (L' := fun m => m = s0.locals ∧ a3 = 0) ?_ (fun m hm => ⟨hm.1, hm.2.2⟩)
  refine hoareGX_seq (hbr 2 128 "n2" a2 (by decide) rfl (a3 = 0) fun h3 h2 => by
    show _ = ublF a0 a1 a2 a3
    unfold ublF; rw [if_neg (by simpa using h3), if_pos h2]) ?_
  refine hoareGX_pre (L' := fun m => m = s0.locals ∧ (a3 = 0 ∧ a2 = 0)) ?_
    (fun m hm => ⟨hm.1, hm.2.1, hm.2.2⟩)
  refine hoareGX_seq (hbr 1 64 "n1" a1 (by decide) rfl (a3 = 0 ∧ a2 = 0) fun h32 h1 => by
    show _ = ublF a0 a1 a2 a3
    unfold ublF; rw [if_neg (by simpa using h32.1), if_neg (by simpa using h32.2), if_pos h1]) ?_
  refine hoareGX_tail hB fun s _ hp vs hvs => ?_
  obtain ⟨hs, ⟨h3, h2⟩, h1⟩ := hp.1
  rw [evs_cons (hev s 0 (by decide) hs) evs_nil] at hvs
  cases hvs
  refine ⟨fun _ => ⟨trivial, fun _ h => h⟩, fun callee v hR => ?_⟩
  have hv := hR _ rfl
  subst hv
  refine hRet _ ?_
  unfold ublF
  rw [if_neg (by simpa using h3), if_neg (by simpa using h2), if_neg (by simpa using h1)]
  rfl

theorem footS_u256_byte_length (hC : X.code.lookup = guestCode) :
    VSpec σ X (nm "u256_byte_length")
      (fun vs v => ∀ a0 a1 a2 a3 : BitVec 64, vs = [wv [a0, a1, a2, a3]] →
        v = .val (.word (ubyF a0 a1 a2 a3))) := by
  have hB := footS_u256_bit_length (σ := σ) hC
  refine footRetS_of_hoareGX fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsA, hA⟩ := lookupCode_one WaveHelpers.code_u256_byte_length hl
  obtain ⟨a0, a1, a2, a3, rfl⟩ := wv4_of_shape hsA
  have ha : s0.locals.lookup (nm "a") = some (wv [a0, a1, a2, a3]) := by rw [hloc]; exact hA
  unfold WaveHelpers.ubyBody
  refine hoareGX_decCall (L' := fun _ _ => True) hB (fun s _ _ vs _ callee => ⟨trivial, fun _ h => h⟩)
    ?_ (fun _ _ _ _ => trivial)
  intro s vs v callee _ hp hvs hR _
  rw [evs_cons (by rw [ev_lv, hp.1]; exact ha) evs_nil] at hvs
  cases hvs
  have hv := hR _ _ _ _ rfl
  subst hv
  refine hoareGX_return fun t _ hp' w hw => ?_
  rw [WaveHelpers.ev_lsr (ev_add2 (ev_lw (by rw [hp'.1]; exact lookup_update_self _ _ _)) (ev_cw _ 7))
    (by decide)] at hw
  cases hw
  intro b0 b1 b2 b3 hb
  obtain ⟨rfl, rfl, rfl, rfl⟩ := wv4_inj (List.cons.inj hb).1
  rfl

/-! ### Pure code -/

theorem hoareGX_pureF {Rf : BitVec 64 → Prop} {s0 : State σ} {L : Locals → Prop}
    {Ret : ValueHOL 64 → Prop} (p : ProgHOL 64) (hp : pureF p = true) (hR : ∀ v, Ret v) :
    HoareG σ X (LPre Rf s0 L) p (LX Rf s0 (fun _ => True) Ret) :=
  hoareG_conseq (hoareG_pureF p hp) (fun _ _ h => h.2) fun r t _ _ ⟨hbw, hpl⟩ =>
    ⟨hbw, fun _ => trivial, fun r' hr' => by
      rcases hpl with h | ⟨v, h⟩
      · rw [h] at hr'; cases hr'
      · rw [h] at hr'; cases hr'; exact Or.inr ⟨v, rfl, hR v⟩⟩

/-! ### `u256_limb` -/

def sh4 : ShapeHOL := .comb [.one, .one, .one, .one]

def limbBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "i")) (cw 0)) (.return (.rfield 0 (lv (nm "a")))) .skip)
    (.seq (.ite (.cmp .equal (lv (nm "i")) (cw 1)) (.return (.rfield 1 (lv (nm "a")))) .skip)
      (.seq (.ite (.cmp .equal (lv (nm "i")) (cw 2)) (.return (.rfield 2 (lv (nm "a")))) .skip)
        (.seq (.ite (.cmp .equal (lv (nm "i")) (cw 3)) (.return (.rfield 3 (lv (nm "a")))) .skip)
          (.return (cw 0)))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_u256_limb : fnEntry Guest.Software.guestFn_u256_limb =
    (nm "u256_limb", [(nm "a", sh4), (nm "i", .one)], limbBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_u256_limb : guestCode (nm "u256_limb") =
    some ([(nm "a", sh4), (nm "i", .one)], limbBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 43) (by decide)) ⟨_, rfl⟩
    entry_u256_limb

theorem footS_u256_limb (hC : X.code.lookup = guestCode) :
    VSpec σ X (nm "u256_limb")
      (fun vs v => ∀ a0 a1 a2 a3 : BitVec 64, vs = [wv [a0, a1, a2, a3], .val (.word 0)] →
        v = .val (.word a0)) := by
  refine footRetS_of_hoareGX fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_u256_limb (by decide) hl
  obtain ⟨I, rfl⟩ := val_of_shapeEq_one hsB
  by_cases hI : I = 0
  · subst hI
    obtain ⟨a0, a1, a2, a3, rfl⟩ := wv4_of_shape hsA
    have ha : s0.locals.lookup (nm "a") = some (wv [a0, a1, a2, a3]) := by rw [hloc]; exact hA
    have hi : s0.locals.lookup (nm "i") = some (.val (.word 0)) := by rw [hloc]; exact hB
    unfold limbBody
    refine hoareGX_seq (L2 := fun _ => False) ?_ (hoareG_false fun _ _ h => h.1)
    refine hoareGX_ite ?_ ?_
    · refine hoareG_pre (hoareGX_return (L := fun m => m = s0.locals) fun t _ hp w hw => ?_)
        fun _ _ h => h.1
      rw [ev_rfield_wv (ws := [a0, a1, a2, a3]) (by rw [ev_lv, hp.1]; exact ha) (by simp)] at hw
      cases hw
      intro b0 b1 b2 b3 hb
      obtain ⟨rfl, -, -, -⟩ := wv4_inj (List.cons.inj hb).1
      rfl
    · refine hoareG_pre (hoareGX_skip (L := fun _ => False) fun _ h => h) fun s _ ⟨hp, hc⟩ => ?_
      have := equal_false (cmp_val_false hc (ev_lw (by rw [hp.1]; exact hi)) (ev_cw _ 0))
      exact absurd rfl this
  · refine hoareGX_pureF _ (by decide) fun v b0 b1 b2 b3 hb => ?_
    exact absurd (by simpa using (List.cons.inj (List.cons.inj hb).2).1) hI

/-! ### `tx_u256_encoded_len` -/

def tuelBody : ProgHOL 64 :=
  .decCall (nm "n") .one (nm "u256_byte_length") [lv (nm "v")]
    (.seq (.ite (.cmp .equal (lv (nm "n")) (cw 0)) (.return (cw 1)) .skip)
      (.seq (.ite (.cmp .equal (lv (nm "n")) (cw 1))
          (.ite (.cmp .lower (.rfield 0 (lv (nm "v"))) (cw 128)) (.return (cw 1)) .skip) .skip)
        (.return (.op .add [cw 1, lv (nm "n")]))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_tx_u256_encoded_len : fnEntry Guest.Software.guestFn_tx_u256_encoded_len =
    (nm "tx_u256_encoded_len", [(nm "v", sh4)], tuelBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_tx_u256_encoded_len : guestCode (nm "tx_u256_encoded_len") =
    some ([(nm "v", sh4)], tuelBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 319) (by decide)) ⟨_, rfl⟩
    entry_tx_u256_encoded_len

theorem footS_tx_u256_encoded_len (hC : X.code.lookup = guestCode) :
    VSpec σ X (nm "tx_u256_encoded_len")
      (fun vs v => ∀ a0 a1 a2 a3 : BitVec 64, vs = [wv [a0, a1, a2, a3]] →
        v = .val (.word (BitVec.ofNat 64 (tuelF a0 a1 a2 a3)))) := by
  have hB := footS_u256_byte_length (σ := σ) hC
  refine footRetS_of_hoareGX fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsA, hA⟩ := lookupCode_one code_tx_u256_encoded_len hl
  obtain ⟨a0, a1, a2, a3, rfl⟩ := wv4_of_shape hsA
  have ha : s0.locals.lookup (nm "v") = some (wv [a0, a1, a2, a3]) := by rw [hloc]; exact hA
  set U := ubyF a0 a1 a2 a3 with hU
  have hUl := ubyF_le a0 a1 a2 a3
  let Ret : ValueHOL 64 → Prop := fun v => ∀ b0 b1 b2 b3 : BitVec 64,
    [wv [a0, a1, a2, a3]] = [wv [b0, b1, b2, b3]] → v = .val (.word (BitVec.ofNat 64 (tuelF b0 b1 b2 b3)))
  have hRet : ∀ k, k = tuelF a0 a1 a2 a3 → Ret (.val (.word (BitVec.ofNat 64 k))) := by
    intro k hk b0 b1 b2 b3 hb
    obtain ⟨rfl, rfl, rfl, rfl⟩ := wv4_inj (List.cons.inj hb).1
    rw [hk]
  unfold tuelBody
  refine hoareGX_decCall (L' := fun _ _ => True) hB (fun s _ _ vs _ callee => ⟨trivial, fun _ h => h⟩)
    ?_ (fun _ _ _ _ => trivial)
  intro s vs v callee _ hp hvs hR _
  rw [evs_cons (by rw [ev_lv, hp.1]; exact ha) evs_nil] at hvs
  cases hvs
  have hv := hR _ _ _ _ rfl
  subst hv
  set m1 := s.locals.update (nm "n", .val (.word U)) with hm1
  have hn : m1.lookup (nm "n") = some (.val (.word U)) := lookup_update_self _ _ _
  have hv' : m1.lookup (nm "v") = some (wv [a0, a1, a2, a3]) := by
    rw [lookup_update_ne _ _ (by decide), hp.1]; exact ha
  have hr0 : ∀ m, m = m1 → ∀ (t : State σ), t.locals = m →
      ev t (.rfield 0 (lv (nm "v"))) = some (.val (.word a0)) := by
    intro m hm t ht
    exact ev_rfield_wv (ws := [a0, a1, a2, a3]) (i := 0) (by rw [ev_lv, ht, hm]; exact hv') (by simp)
  refine hoareGX_seq (L2 := fun m => m = m1 ∧ U.toNat ≠ 0) ?_ ?_
  · refine hoareGX_ite ?_ ?_
    · refine hoareGX_preC (L' := fun m => m = m1 ∧ U = 0)
        (hoareGX_return fun t _ hp w hw => ?_)
        (fun s hL hc => ⟨hL, equal_true (cmpT hc (ev_lw (by rw [hL]; exact hn)) (ev_cw _ 0))⟩)
      rw [ev_cw] at hw
      cases hw
      refine hRet 1 ?_
      unfold tuelF
      rw [← hU, hp.1.2]
      simp
    · refine hoareGX_preC (hoareGX_skip fun _ h => h) (fun s hL hc => ⟨hL, fun h0 => ?_⟩)
      have := equal_false (cmp_val_false hc (ev_lw (by rw [hL]; exact hn)) (ev_cw _ 0))
      exact this (BitVec.eq_of_toNat_eq (by simpa using h0))
  refine hoareGX_seq (L2 := fun m => m = m1 ∧ U.toNat ≠ 0 ∧ ¬ (U.toNat = 1 ∧ a0.toNat < 128)) ?_ ?_
  · refine hoareGX_ite ?_ ?_
    · refine hoareGX_preC (L' := fun m => m = m1 ∧ U.toNat ≠ 0 ∧ U.toNat = 1) ?_
        (fun s hL hc => ⟨hL.1, hL.2, by
          have := equal_true (cmpT hc (ev_lw (by rw [hL.1]; exact hn)) (ev_cw _ 1))
          rw [this]; rfl⟩)
      refine hoareGX_ite ?_ ?_
      · refine hoareGX_preC (L' := fun m => m = m1 ∧ U.toNat = 1 ∧ a0.toNat < 128)
          (hoareGX_return fun t _ hp w hw => ?_)
          (fun s hL hc => ⟨hL.1, hL.2.2, by
            have := lower_true (cmpT hc (hr0 _ hL.1 s rfl) (ev_cw _ 128))
            simpa using this⟩)
        rw [ev_cw] at hw
        cases hw
        refine hRet 1 ?_
        unfold tuelF
        rw [← hU, if_neg (by have := hp.1.2.1; omega), if_pos ⟨hp.1.2.1, hp.1.2.2⟩]
      · refine hoareGX_preC (hoareGX_skip fun _ h => h)
          (fun s hL hc => ⟨hL.1, hL.2.1, fun ⟨_, h⟩ => ?_⟩)
        have := lower_false (cmp_val_false hc (hr0 _ hL.1 s rfl) (ev_cw _ 128))
        simp at this
        omega
    · refine hoareGX_preC (hoareGX_skip fun _ h => h)
        (fun s hL hc => ⟨hL.1, hL.2, fun ⟨h1, _⟩ => ?_⟩)
      have := equal_false (cmp_val_false hc (ev_lw (by rw [hL.1]; exact hn)) (ev_cw _ 1))
      exact this (BitVec.eq_of_toNat_eq (by simpa using h1))
  · refine hoareGX_return fun t _ hp w hw => ?_
    rw [ev_add2 (ev_cw _ 1) (ev_lw (by rw [hp.1.1]; exact hn))] at hw
    cases hw
    have e : BitVec.ofNat 64 1 + U = BitVec.ofNat 64 (1 + U.toNat) := by
      apply BitVec.eq_of_toNat_eq
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
      try omega
    rw [e]
    refine hRet _ ?_
    unfold tuelF
    rw [← hU, if_neg hp.1.2.1, if_neg hp.1.2.2]

/-! ### `rlp_word_encoded_len`, `rlp_list_header_len` -/

def rwelBody : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (lv (nm "w")) (cw 128)) (.return (cw 1)) .skip)
    (.decCall (nm "ll") .one (nm "rlp_be_len") [lv (nm "w")] (.return (.op .add [cw 1, lv (nm "ll")])))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_rlp_word_encoded_len : fnEntry Guest.Software.guestFn_rlp_word_encoded_len =
    (nm "rlp_word_encoded_len", [(nm "w", .one)], rwelBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_rlp_word_encoded_len : guestCode (nm "rlp_word_encoded_len") =
    some ([(nm "w", .one)], rwelBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 127) (by decide)) ⟨_, rfl⟩
    entry_rlp_word_encoded_len

theorem footS_rlp_word_encoded_len (hC : X.code.lookup = guestCode) :
    VSpec σ X (nm "rlp_word_encoded_len")
      (fun vs v => ∀ W : BitVec 64, vs = [.val (.word W)] →
        v = .val (.word (BitVec.ofNat 64 (wordLen W.toNat)))) := by
  have hB := FootRetS.of_footRet (footRet_rlp_be_len (σ := σ) hC)
  refine footRetS_of_hoareGX fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsA, hA⟩ := lookupCode_one code_rlp_word_encoded_len hl
  obtain ⟨W, rfl⟩ := val_of_shapeEq_one hsA
  have hw : s0.locals.lookup (nm "w") = some (.val (.word W)) := by rw [hloc]; exact hA
  have hRet : ∀ k, k = wordLen W.toNat → ∀ W' : BitVec 64, [ValueHOL.val (.word W)] =
      [.val (.word W')] → ValueHOL.val (.word (BitVec.ofNat 64 k)) =
        .val (.word (BitVec.ofNat 64 (wordLen W'.toNat))) := by
    intro k hk W' h
    cases h
    rw [hk]
  unfold rwelBody
  refine hoareGX_seq (L2 := fun m => m = s0.locals ∧ 128 ≤ W.toNat) ?_ ?_
  · refine hoareGX_ite ?_ ?_
    · refine hoareGX_preC (L' := fun m => m = s0.locals ∧ W.toNat < 128)
        (hoareGX_return fun t _ hp v hv => ?_)
        (fun s hL hc => ⟨hL, by
          have := lower_true (cmpT hc (ev_lw (by rw [hL]; exact hw)) (ev_cw _ 128))
          simpa using this⟩)
      rw [ev_cw] at hv
      cases hv
      exact hRet 1 (by unfold wordLen; rw [if_pos hp.1.2])
    · refine hoareGX_preC (hoareGX_skip fun _ h => h) (fun s hL hc => ⟨hL, by
        have := lower_false (cmp_val_false hc (ev_lw (by rw [hL]; exact hw)) (ev_cw _ 128))
        simpa using this⟩)
  · refine hoareGX_decCall (L' := fun _ _ => True) hB (fun s _ _ vs _ callee => ⟨trivial, fun _ h => h⟩)
      ?_ (fun _ _ _ _ => trivial)
    intro s vs v callee _ hp hvs hR _
    rw [evs_cons (ev_lw (by rw [hp.1.1]; exact hw)) evs_nil] at hvs
    cases hvs
    have hv := hR W rfl
    subst hv
    refine hoareGX_return fun t _ hp' w hw' => ?_
    rw [ev_add2 (ev_cw _ 1) (ev_lw (by rw [hp'.1]; exact lookup_update_self _ _ _))] at hw'
    cases hw'
    have h8 := beLen_le8 W.isLt
    rw [BitVec.ofNat_add_ofNat]
    exact hRet _ (by unfold wordLen; rw [if_neg (by have := hp.1.2; omega)])

theorem footS_rlp_list_header_len (hC : X.code.lookup = guestCode) :
    VSpec σ X (nm "rlp_list_header_len") (fun vs v => LhlRet vs v) :=
  FootRetS.of_footRet (footRet_rlp_list_header_len hC)

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.footS_u256_byte_length
#print axioms InitECandidate.Solver.MemSafe.Rec.ubyF_le
#print axioms InitECandidate.Solver.MemSafe.Rec.footS_tx_u256_encoded_len
#print axioms InitECandidate.Solver.MemSafe.Rec.footS_rlp_word_encoded_len
#print axioms InitECandidate.Solver.MemSafe.Rec.footS_u256_limb
