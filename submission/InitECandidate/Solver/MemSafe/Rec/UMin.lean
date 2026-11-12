import InitECandidate.Solver.MemSafe.Rec.UVal
import InitECandidate.Solver.MemSafe.WaveHelpers.U256Min

set_option autoImplicit false

/-!
# `u256_to_be_min`, and the facts `tx_put_u256` needs from its callees

* `funSpec_alloc_abn`: an abnormal result of `alloc` (a trap) keeps memory and globals.
* `funSpec_rlp_encode_bytes_one`: `rlp_encode_bytes(D, S, 1)` returns `1` when the byte at `S`
  is `< 128`.
* **`funSpec_u256_to_be_min`** (`UMinR`): `u256_to_be_min(a, O)` (`O + 32 ≤ scratchEnd`) keeps
  the globals, writes only the cells of `[O, O + 32)`, returns `ubyF a`, and a one-byte result
  is `a.0 % 256` at `O`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-! ## `alloc`'s traps -/

theorem funSpec_alloc_abn (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "alloc") (fun _ s r t => Good (some r) → (∃ p, ptrsOf s = some p) → Abn r →
      t.globals = s.globals ∧ t.memory = s.memory) := by
  apply AllocImpl.funSpec_of_hoareG
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one AllocImpl.code_alloc hl
  by_cases hp : ∃ p, ptrsOf s0 = some p
  · obtain ⟨p, hps⟩ := hp
    obtain ⟨a, b, c, ha, -, -, -⟩ := AllocImpl.ptrsOf_some hps
    refine AllocImpl.hoareG_allocSkel hC (P0 := a) (AllocImpl.lookup_of_gword ha) ?_ ?_
    · intro r t hab hm hg r' hr' _ _
      cases hr'
      exact ⟨hg, hm⟩
    · intro Qw v t _ _ _ _ _ _ _ r' hr' _ hab
      cases hr'
      rcases hab with ⟨e, w, h⟩ | ⟨e, h⟩ <;> cases h
  · exact fun s _ _ _ r' _ hp' => absurd hp' hp

/-! ## `rlp_encode_bytes` of one byte -/

theorem funSpec_rlp_encode_bytes_one (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_encode_bytes") (fun vs s r _ => Good (some r) → ∀ D S : BitVec 64,
      vs = [.val (.word D), .val (.word S), .val (.word (BitVec.ofNat 64 1))] →
      Spec.Mpt.byteOf s.memory s.be S < 128 → ∀ v, r = .returned v → v = .val (.word 1)) := by
  apply AllocImpl.funSpec_of_hoareG
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, Sv, Cc, rfl, -, -, -, hla, hlb, hlc⟩ :=
    lookupCode_three code_rlp_encode_bytes (by decide) (by decide) (by decide) hl
  by_cases hcase : ∃ D S : BitVec 64, [A, Sv, Cc] = [.val (.word D), .val (.word S),
      .val (.word (BitVec.ofNat 64 1))] ∧ Spec.Mpt.byteOf s0.memory s0.be S < 128
  · obtain ⟨D, S, he, hb⟩ := hcase
    simp only [List.cons.injEq, and_true] at he
    obtain ⟨rfl, rfl, rfl⟩ := he
    have hS : s0.locals.lookup sN = some (.val (.word S)) := by rw [hloc]; exact hlb
    have hN : s0.locals.lookup nN = some (.val (.word (BitVec.ofNat 64 1))) := by
      rw [hloc]; exact hlc
    let Q0 : Option (PanSemResultExact 64) → Prop := fun r =>
      ∀ r', r = some r' → ∀ v, r' = .returned v → v = .val (.word 1)
    refine hoareG_conseq (P := fun t => t = s0) (Q := fun r _ => Q0 r) ?_ (fun _ _ h => h)
      (fun r t _ _ h r' hr' D' S' _ _ v hv => h r' hr' v hv)
    unfold encodeBytesBody
    refine hoareG_seq (R := fun r _ => r ≠ none ∧ Q0 r) ?_ (fun _ _ _ _ _ h => h.2)
      (hoareG_false fun _ _ h => h.1 rfl)
    refine hoareG_ite ?_ ?_
    · refine hoareG_dec fun s _ ⟨hs, _⟩ v hv _ => ?_
      subst hs
      have hv' := Spec.Mpt.Leaves.ev_loadByte_ld8W (ev_lw hS) hv
      subst hv'
      have hlt : (Spec.Mpt.ld8W s S).toNat < 128 := by
        unfold Spec.Mpt.ld8W
        rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
        exact hb
      refine hoareG_ite ?_ ?_
      · refine hoareG_seq (R := fun r _ => r = none) (hoareG_storeByte fun _ _ _ _ _ _ _ _ _ => rfl)
          (fun _ _ _ hr _ h => absurd h hr) ?_
        refine hoareG_return fun t _ _ w hw => ⟨by simp, fun r' hr' v hv => ?_⟩
        cases hr'
        cases hv
        rw [ev_cw] at hw
        cases hw
        rfl
      · refine hoareG_false fun t _ ⟨ht, hc⟩ => ?_
        subst ht
        have := lower_false (cmp_val_false hc (ev_lw (lk_set_self _ _ _)) (ev_cw _ 128))
        simp at this
        omega
    · refine hoareG_false fun t _ ⟨ht, hc⟩ => ?_
      subst ht
      exact equal_false (cmp_val_false hc (ev_lw hN) (ev_cw _ 1)) rfl
  · exact fun s _ _ _ r' _ D S he hb => absurd ⟨D, S, he, hb⟩ hcase

/-! ## `u256_to_be_min` -/

/-- The post of `u256_to_be_min`. -/
def UMinR (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  ∀ a0 a1 a2 a3 O : BitVec 64, vs = [wv [a0, a1, a2, a3], .val (.word O)] →
    O.toNat + 32 ≤ scratchEnd →
    t.globals = s.globals ∧ ModifiesOnly (fun c => Overlap O.toNat 32 c) s.memory t.memory ∧
      ∀ v, r = .returned v → v = .val (.word (ubyF a0 a1 a2 a3)) ∧
        ((ubyF a0 a1 a2 a3).toNat = 1 → Spec.Mpt.byteOf t.memory t.be O = a0.toNat % 256)

theorem ev_andc {s : State σ} {x : BitVec 64} {e : ExpHOL 64} (he : ev s e = some (.val (.word x)))
    (k : Nat) : ev s (.op .and [e, cw k]) = some (.val (.word (x &&& BitVec.ofNat 64 k))) := by
  rw [ev_op (xs := [x, BitVec.ofNat 64 k]) (evs_cons he (evs_cons (ev_cw s k) evs_nil))]
  simp only [Flapjack.wordOpHOL, Flapjack.wordOp, List.foldr, Option.map_some]
  have e : (AndOp.and (BitVec.ofNat 64 k) (Complement.complement (0 : BitVec 64)) : BitVec 64) =
      BitVec.ofNat 64 k := by
    show BitVec.ofNat 64 k &&& ~~~(0 : BitVec 64) = _
    have : (~~~(0 : BitVec 64)) = BitVec.allOnes 64 := by decide
    rw [this, BitVec.and_allOnes]
  rw [e]
  rfl

/-- The loop state of `u256_to_be_min`. -/
def UJ (s0 : State σ) (A : ValueHOL 64) (O Ln a0 : BitVec 64) (t : State σ) : Prop :=
  BWPost (fun c => Overlap O.toNat 32 c) s0 t ∧ t.locals.lookup (nm "a") = some A ∧
    t.locals.lookup (nm "out") = some (.val (.word O)) ∧
    t.locals.lookup (nm "len") = some (.val (.word Ln)) ∧
    ∃ I : BitVec 64, t.locals.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ Ln.toNat ∧
      (Ln.toNat = 1 → I.toNat = 1 → Spec.Mpt.byteOf t.memory t.be O = a0.toNat % 256)

theorem uj_res {s0 : State σ} {A : ValueHOL 64} {O Ln a0 : BitVec 64} {t : State σ}
    (h : UJ s0 A O Ln a0 t) {x : MlS} (h1 : x ≠ nm "a") (h2 : x ≠ nm "out") (h3 : x ≠ nm "len")
    (h4 : x ≠ nm "i") (old : Option (ValueHOL 64)) :
    UJ s0 A O Ln a0 { t with locals := t.locals.resVarEq (x, old) } := by
  obtain ⟨hb, ha, ho, hl, I, hi, hI, hf⟩ := h
  exact ⟨hb, by rw [lookup_resVarEq_ne _ _ h1]; exact ha, by rw [lookup_resVarEq_ne _ _ h2]; exact ho,
    by rw [lookup_resVarEq_ne _ _ h3]; exact hl, I, by rw [lookup_resVarEq_ne _ _ h4]; exact hi,
    hI, hf⟩

theorem byteOf_store {m mem : Mem} {d : BitVec 64 → Prop} {be : Bool} {a x : BitVec 64}
    (h : @panMemStoreByteWord8HOL 64 _ m d (fun y => Classical.propDecidable (d y)) be a
      (BitVec.ofNat 8 x.toNat) = some mem) :
    Spec.Mpt.byteOf mem be a = x.toNat % 256 := by
  obtain ⟨-, rfl⟩ := Spec.Inv.storeByte_eq h
  unfold Spec.Mpt.byteOf
  have e : ∀ V : BitVec 64, MemSafe.rd (Spec.Inv.upd m (panByteAlignHOL a) V) (panByteAlignHOL a) = V := by
    intro V; unfold MemSafe.rd Spec.Inv.upd; simp
  rw [e, Spec.Inv.getByte_setByte_self, UInt8.toNat_ofNat']
  simp

theorem funSpec_u256_to_be_min (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "u256_to_be_min") (fun vs s r t => Good (some r) → UMinR vs s r t) := by
  have hB := footS_u256_byte_length (σ := σ) hC
  have hLm := footS_u256_limb (σ := σ) hC
  apply AllocImpl.funSpec_of_hoareG
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hla, hlb⟩ :=
    lookupCode_two WaveHelpers.code_u256_to_be_min (by decide) hl
  by_cases hcase : ∃ a0 a1 a2 a3 O : BitVec 64, [A, B] = [wv [a0, a1, a2, a3], .val (.word O)] ∧
      O.toNat + 32 ≤ scratchEnd
  swap
  · exact fun s _ _ _ r' _ a0 a1 a2 a3 O he hO => absurd ⟨a0, a1, a2, a3, O, he, hO⟩ hcase
  obtain ⟨a0, a1, a2, a3, O, he, hO⟩ := hcase
  simp only [List.cons.injEq, and_true] at he
  obtain ⟨rfl, rfl⟩ := he
  have hse : scratchEnd < 2 ^ 63 := by decide
  have ha : s0.locals.lookup (nm "a") = some (wv [a0, a1, a2, a3]) := by rw [hloc]; exact hla
  have ho : s0.locals.lookup (nm "out") = some (.val (.word O)) := by rw [hloc]; exact hlb
  set Ln := ubyF a0 a1 a2 a3 with hLn
  have hLn32 := ubyF_le a0 a1 a2 a3
  let Rf : BitVec 64 → Prop := fun c => Overlap O.toNat 32 c
  let Q' : Option (PanSemResultExact 64) → State σ → Prop := fun r t => BWPost Rf s0 t ∧
    ∀ v, r = some (.returned v) → v = .val (.word Ln) ∧
      (Ln.toNat = 1 → Spec.Mpt.byteOf t.memory t.be O = a0.toNat % 256)
  refine hoareG_conseq (P := fun t => t = s0) (Q := Q') ?_ (fun _ _ h => h) ?_
  rotate_left
  · intro r t _ _ ⟨⟨hgl, hm⟩, hret⟩ r' hr' b0 b1 b2 b3 O' he hO'
    simp only [List.cons.injEq, and_true] at he
    obtain ⟨he1, he2⟩ := he
    obtain ⟨rfl, rfl, rfl, rfl⟩ := wv4_inj he1
    cases he2
    subst hr'
    exact ⟨hgl, hm, fun v hv => by subst hv; exact hret v rfl⟩
  unfold WaveHelpers.umBody
  refine hoareG_decCall hB ?_ ?_
  rotate_left
  · intro s _ hs vs _ callee r st hR _ habn
    subst s
    obtain ⟨hgl, hm, -⟩ := hR (abn_good habn) trivial
    refine ⟨⟨hgl, fun c _ => hm c id⟩, fun v hv => ?_⟩
    cases hv
    rcases habn with ⟨e, w, h⟩ | ⟨e, h⟩ <;> cases h
  intro s _ hs vs hvs callee v st hR _ _
  subst s
  rw [evs_cons (by rw [ev_lv]; exact ha) evs_nil] at hvs
  cases hvs
  obtain ⟨hgl, hm, hret⟩ := hR (by simp [Good]) trivial
  have hv := hret v rfl _ _ _ _ rfl
  subst hv
  have hmem : st.memory = s0.memory := funext fun c => hm c id
  set A := wv [a0, a1, a2, a3] with hAdef
  -- `var i = 0; while … ; return len`
  refine hoareG_conseq (Q := Q') ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  refine hoareG_dec fun s2 _ hs2 v hv _ => ?_
  subst s2
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (Q := Q') ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  refine hoareG_pre (P := UJ s0 A O Ln a0) ?_ (fun t _ ht => ?_)
  rotate_left
  · subst ht
    refine ⟨⟨hgl, fun c _ => by show st.memory c = s0.memory c; rw [hmem]⟩, ?_, ?_, ?_,
      BitVec.ofNat 64 0, lk_set_self _ _ _, by simp, fun _ h => by simp at h⟩
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact ha
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact ho
    · rw [lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
  let R : Option (PanSemResultExact 64) → State σ → Prop := fun r t =>
    (r = none ∧ UJ s0 A O Ln a0 t ∧ ∀ I : BitVec 64,
      t.locals.lookup (nm "i") = some (.val (.word I)) → Ln.toNat ≤ I.toNat) ∨ (r ≠ none ∧ Q' r t)
  refine hoareG_seq (R := R) ?_ (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
  rotate_left
  · refine hoareG_return fun t _ h v hv => ?_
    rcases h with ⟨-, ⟨hbw, -, -, hL, I, hI, hIL, hf⟩, hge⟩ | ⟨h, -⟩
    · rw [ev_lw hL] at hv
      cases hv
      have hIe : I.toNat = Ln.toNat := by have := hge I hI; omega
      exact ⟨hbw, fun v hv' => by
        cases hv'
        exact ⟨rfl, fun h1 => hf h1 (by omega)⟩⟩
    · exact absurd rfl h
  -- the loop
  let Pb : Option (PanSemResultExact 64) → State σ → Prop := fun r t =>
    (r = none → UJ s0 A O Ln a0 t) ∧ ∀ r', r = some r' → Abn r' ∧ BWPost Rf s0 t
  have habnR : ∀ r' (t : State σ), Abn r' → BWPost Rf s0 t → R (some r') t := fun r' t hab hbw =>
    Or.inr ⟨by simp, hbw, fun v hv => by
      cases hv
      rcases hab with ⟨e, w, h⟩ | ⟨e, h⟩ <;> cases h⟩
  refine hoareG_while (fun t h => h) ?_ ?_
  rotate_left
  · intro t _ hJ hc
    refine Or.inl ⟨rfl, hJ, fun I hI => ?_⟩
    obtain ⟨-, -, -, hL, -⟩ := hJ
    exact lower_false (cmp_val_false hc (ev_lw hI) (ev_lw hL))
  refine hoareG_conseq (Q := Pb) ?_ (fun _ _ h => h) ?_
  rotate_left
  · intro r t _ _ h
    have hnab : ∀ r', r = some r' → ¬ (r' = .continue ∨ r' = .break) := by
      intro r' hr' hcb
      rcases (h.2 r' hr').1 with ⟨e, v, h'⟩ | ⟨e, h'⟩ <;> rcases hcb with rfl | rfl <;> cases h'
    refine ⟨h.1, fun hr => absurd (Or.inl rfl) (hnab _ hr), fun hr => absurd (Or.inr rfl) (hnab _ hr),
      fun r' hr' _ _ => ?_⟩
    rw [hr']
    exact habnR r' t (h.2 r' hr').1 (h.2 r' hr').2
  intro s hs ⟨hJ, hc⟩
  obtain ⟨hbw, hA, hO', hL, I, hI, hIL, -⟩ := hJ
  have hlt : I.toNat < Ln.toNat := ltN_true hL hI hc
  have hLn32' : Ln.toNat ≤ 32 := hLn32
  refine (?_ : HoareG σ X (fun t => t = s) WaveHelpers.umLoop Pb) s hs rfl
  have hres : ∀ (r : Option (PanSemResultExact 64)) (t : State σ) (x : MlS) (old : Option (ValueHOL 64)),
      x ≠ nm "a" → x ≠ nm "out" → x ≠ nm "len" → x ≠ nm "i" → Pb r t →
      Pb r { t with locals := t.locals.resVarEq (x, old) } :=
    fun r t x old h1 h2 h3 h4 h => ⟨fun hr => uj_res (h.1 hr) h1 h2 h3 h4 old, h.2⟩
  unfold WaveHelpers.umLoop
  refine hoareG_dec fun s1 _ hs1 v hv _ => ?_
  subst s1
  rw [ev_sub2 (ev_sub2 (ev_lw hL) (ev_cw _ 1)) (ev_lw hI)] at hv
  cases hv
  set Pos := Ln - BitVec.ofNat 64 1 - I with hPos
  refine hoareG_conseq (Q := Pb) ?_ (fun _ _ h => h)
    (fun r t _ _ h => hres r t _ _ (by decide) (by decide) (by decide) (by decide) h)
  have hA1 : (setVarHOLFinite (nm "pos") (.val (.word Pos)) s).locals.lookup (nm "a") = some A := by
    rw [lk_set_ne _ _ (by decide)]; exact hA
  have hP1 : (setVarHOLFinite (nm "pos") (.val (.word Pos)) s).locals.lookup (nm "pos") =
      some (.val (.word Pos)) := lk_set_self _ _ _
  have hI1 : I.toNat = 0 → Ln.toNat = 1 → Pos = 0 := by
    intro h0 h1
    apply BitVec.eq_of_toNat_eq
    rw [hPos, BitVec.toNat_sub, BitVec.toNat_sub, h0, h1]
    simp
  refine hoareG_decCall hLm ?_ ?_
  rotate_left
  · intro s1 _ hs1 vs _ callee r st1 hR1 _ habn
    subst s1
    obtain ⟨hgl1, hm1, -⟩ := hR1 (abn_good habn) trivial
    exact ⟨(fun h => nomatch h), fun r' hr' => by
      cases hr'
      exact ⟨habn, hgl1.trans hbw.1, fun c hc => (hm1 c id).trans (hbw.2 c hc)⟩⟩
  intro s1 _ hs1 vs hvs callee v st1 hR1 _ hsh
  subst s1
  rw [evs_cons (by rw [ev_lv]; exact hA1) (evs_cons (WaveHelpers.ev_lsr (ev_lw hP1) (by decide))
    evs_nil)] at hvs
  cases hvs
  obtain ⟨hgl1, hm1, hret1⟩ := hR1 (by simp [Good]) trivial
  obtain ⟨V, rfl⟩ := val_of_shapeEq_one' hsh
  have hI0 : Ln.toNat = 1 → I.toNat = 0 := fun h1 => by omega
  have hV : Ln.toNat = 1 → V = a0 := by
    intro h1
    have hP0 : Pos >>> (3 : Nat) = 0 := by rw [hI1 (hI0 h1) h1]; rfl
    have := hret1 _ rfl a0 a1 a2 a3 (by rw [hP0])
    cases this
    rfl
  have hmem1 : st1.memory = s.memory := funext fun c => hm1 c id
  refine hoareG_conseq (Q := Pb) ?_ (fun _ _ h => h)
    (fun r t _ _ h => hres r t _ _ (by decide) (by decide) (by decide) (by decide) h)
  set s4 := setVarHOLFinite (nm "l") (.val (.word V))
    { st1 with locals := (setVarHOLFinite (nm "pos") (.val (.word Pos)) s).locals } with hs4
  have h4a : s4.locals.lookup (nm "a") = some A := by rw [hs4, lk_set_ne _ _ (by decide)]; exact hA1
  have h4o : s4.locals.lookup (nm "out") = some (.val (.word O)) := by
    rw [hs4, lk_set_ne _ _ (by decide)]
    show (setVarHOLFinite (nm "pos") (.val (.word Pos)) s).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide)]; exact hO'
  have h4L : s4.locals.lookup (nm "len") = some (.val (.word Ln)) := by
    rw [hs4, lk_set_ne _ _ (by decide)]
    show (setVarHOLFinite (nm "pos") (.val (.word Pos)) s).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide)]; exact hL
  have h4i : s4.locals.lookup (nm "i") = some (.val (.word I)) := by
    rw [hs4, lk_set_ne _ _ (by decide)]
    show (setVarHOLFinite (nm "pos") (.val (.word Pos)) s).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide)]; exact hI
  have h4p : s4.locals.lookup (nm "pos") = some (.val (.word Pos)) := by
    rw [hs4, lk_set_ne _ _ (by decide)]; exact hP1
  have h4l : s4.locals.lookup (nm "l") = some (.val (.word V)) := lk_set_self _ _ _
  have hbw4 : BWPost Rf s0 s4 := ⟨hgl1.trans hbw.1, fun c hc => by
    show st1.memory c = s0.memory c
    rw [hmem1]; exact hbw.2 c hc⟩
  refine hoareG_seq (R := fun r t => r = none ∧ t.locals = s4.locals ∧ BWPost Rf s0 t ∧
      (Ln.toNat = 1 → Spec.Mpt.byteOf t.memory t.be O = a0.toNat % 256)) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_storeByte fun t _ ht w x mem hw hx hst => ?_
    subst t
    rw [ev_add2 (ev_lw h4o) (ev_lw h4i)] at hw
    cases hw
    have hOI : (O + I).toNat = O.toNat + I.toNat := by
      rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
    have hov : Overlap O.toNat 32 (panByteAlignHOL (O + I)) :=
      overlap_byte (by omega) (by omega)
    have hm := storeByte_mod hst
    refine ⟨rfl, rfl, ⟨hbw4.1, fun c hc => ?_⟩, fun h1 => ?_⟩
    · show mem c = s0.memory c
      rw [hm c (fun h => hc (h ▸ hov))]
      exact hbw4.2 c hc
    · have hV' := hV h1
      have hP0 := hI1 (hI0 h1) h1
      have hII : I = 0 := BitVec.eq_of_toNat_eq (by rw [hI0 h1]; rfl)
      have hsh : ev s4 (.shift .lsr (lv (nm "l"))
          (.panop .mul [.op .and [lv (nm "pos"), cw 7], cw 8])) =
          some (.val (.word (V >>> (0 : Nat)))) := by
        rw [ev_shift (ev_lw h4l) (ev_mul2 (ev_andc (ev_lw h4p) 7) (ev_cw _ 8)), hP0]
        simp [wordShiftHOL]
      rw [ev_andc hsh 255] at hx
      cases hx
      have hO0 : O + I = O := by rw [hII]; simp
      rw [hO0] at hst
      rw [byteOf_store hst, hV', BitVec.toNat_and, BitVec.ushiftRight_zero]
      have : (BitVec.ofNat 64 255).toNat = 2 ^ 8 - 1 := rfl
      rw [this, Nat.and_two_pow_sub_one_eq_mod]
      omega
  · refine hoareG_assign fun t _ ⟨_, htl, hbw', hf'⟩ v hv _ => ?_
    rw [ev_add2 (ev_lw (by rw [htl]; exact h4i)) (ev_cw _ 1)] at hv
    cases hv
    have hI1' : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
    refine ⟨fun _ => ⟨hbw', ?_, ?_, ?_, I + BitVec.ofNat 64 1, lk_set_self _ _ _, by omega,
      fun h1 h2 => hf' h1⟩, fun r' h => nomatch h⟩
    · rw [lk_set_ne _ _ (by decide), htl]; exact h4a
    · rw [lk_set_ne _ _ (by decide), htl]; exact h4o
    · rw [lk_set_ne _ _ (by decide), htl]; exact h4L

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.funSpec_alloc_abn
#print axioms InitECandidate.Solver.MemSafe.Rec.funSpec_rlp_encode_bytes_one
#print axioms InitECandidate.Solver.MemSafe.Rec.funSpec_u256_to_be_min
