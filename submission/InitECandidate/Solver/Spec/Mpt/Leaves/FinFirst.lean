import InitECandidate.Solver.Spec.Mpt.Leaves.FinWrite

/-!
# `_node_rlp_finish`: the first pass (the payload length)

The first pass of `_node_rlp_finish` writes nothing: it adds `node_ref_len` of the extension
child, or of the 16 branch children and `rlp_value_encoded_len` of the branch value, to the
payload word `fr + 40`. `fin_first`: it ends with the payload `pl1 s0 ND PL0`, memory, globals and
byte order of the entry state.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (State)
open InitECandidate.Solver.MemSafe.Helpers (BWPost AlignedDom Locals)

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd Overlap ModifiesOnly gword gHeap)

/-! ## The finish locals -/

structure FL (FR ND K PL CB CL : BitVec 64) (m : Locals) : Prop where
  fr : m.lookup (nm "fr") = some (.val (.word FR))
  node : m.lookup (nm "node") = some (.val (.word ND))
  k : m.lookup (nm "k") = some (.val (.word K))
  payload : m.lookup (nm "payload") = some (.val (.word PL))
  cbuf : m.lookup (nm "cbuf") = some (.val (.word CB))
  clen : m.lookup (nm "clen") = some (.val (.word CL))

/-- The names the finish locals track. -/
def FLN (x : MlS) : Prop :=
  x ≠ nm "fr" ∧ x ≠ nm "node" ∧ x ≠ nm "k" ∧ x ≠ nm "payload" ∧ x ≠ nm "cbuf" ∧ x ≠ nm "clen"

theorem fL_upd {FR ND K PL CB CL : BitVec 64} {m : Locals} (h : FL FR ND K PL CB CL m) {x : MlS}
    (hx : FLN x) (v : ValueHOL 64) : FL FR ND K PL CB CL (m.update (x, v)) := by
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := hx
  exact ⟨by rw [lookup_update_ne _ _ h1]; exact h.fr, by rw [lookup_update_ne _ _ h2]; exact h.node,
    by rw [lookup_update_ne _ _ h3]; exact h.k, by rw [lookup_update_ne _ _ h4]; exact h.payload,
    by rw [lookup_update_ne _ _ h5]; exact h.cbuf, by rw [lookup_update_ne _ _ h6]; exact h.clen⟩

theorem fL_res {FR ND K PL CB CL : BitVec 64} {m : Locals} (h : FL FR ND K PL CB CL m) {x : MlS}
    (hx : FLN x) (o : Option (ValueHOL 64)) : FL FR ND K PL CB CL (m.resVarEq (x, o)) := by
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := hx
  exact ⟨by rw [lookup_resVarEq_ne _ _ h1]; exact h.fr, by rw [lookup_resVarEq_ne _ _ h2]; exact h.node,
    by rw [lookup_resVarEq_ne _ _ h3]; exact h.k, by rw [lookup_resVarEq_ne _ _ h4]; exact h.payload,
    by rw [lookup_resVarEq_ne _ _ h5]; exact h.cbuf, by rw [lookup_resVarEq_ne _ _ h6]; exact h.clen⟩

theorem fL_payload {FR ND K PL CB CL : BitVec 64} {m : Locals} (h : FL FR ND K PL CB CL m)
    (q : BitVec 64) : FL FR ND K q CB CL (m.update (nm "payload", .val (.word q))) :=
  ⟨by rw [lookup_update_ne _ _ (by decide)]; exact h.fr,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.node,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.k, lookup_update_self _ _ _,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.cbuf,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.clen⟩

theorem fLN_rl : FLN (nm "rl") := by unfold FLN; decide
theorem fLN_rl2 : FLN (nm "rl2") := by unfold FLN; decide
theorem fLN_vl2 : FLN (nm "vl2") := by unfold FLN; decide
theorem fLN_i : FLN (nm "i") := by unfold FLN; decide
theorem fLN_j : FLN (nm "j") := by unfold FLN; decide
theorem fLN_hl : FLN (nm "hl") := by unfold FLN; decide
theorem fLN_buf : FLN (nm "buf") := by unfold FLN; decide
theorem fLN_off : FLN (nm "off") := by unfold FLN; decide
theorem fLN_w : FLN (nm "w") := by unfold FLN; decide
theorem fLN_w2 : FLN (nm "w2") := by unfold FLN; decide
theorem fLN_w3 : FLN (nm "w3") := by unfold FLN; decide
theorem fLN_w4 : FLN (nm "w4") := by unfold FLN; decide
theorem fLN_w5 : FLN (nm "w5") := by unfold FLN; decide

/-! ## Node loads -/

theorem ev_ldN {t : State σ} {ND : BitVec 64}
    (hn : t.locals.lookup (nm "node") = some (.val (.word ND))) {k : Nat} {v : ValueHOL 64}
    (h : ev t (ldN k) = some v) : v = .val (.word (rd t.memory (ND + BitVec.ofNat 64 k))) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load1_inv' h
  rw [ev_add_cw hn k] at hw
  cases hw
  rfl

theorem ev_slotE {t : State σ} {ND I : BitVec 64} {x : MlS}
    (hn : t.locals.lookup (nm "node") = some (.val (.word ND)))
    (hi : t.locals.lookup x = some (.val (.word I))) (hI : I.toNat < 16) {v : ValueHOL 64}
    (h : ev t (slotE x) = some v) : v = .val (.word (rd t.memory (slot ND I.toNat))) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load1_inv' h
  rw [ev_add3 (ev_lw hn) (ev_cw t 32) (ev_mul2 (ev_lw hi) (ev_cw t 8)), slot_ev hI] at hw
  cases hw
  rfl

theorem evs_one_inv {t : State σ} {e : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs t [e] = some vs) : ∃ v, vs = [v] ∧ ev t e = some v := by
  obtain ⟨v, vs', rfl, h1, h2⟩ := evs_cons_inv h
  have : vs' = [] := by
    have h0 : evs t ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at h2; exact (Option.some.inj h2).symm
  subst this
  exact ⟨v, rfl, h1⟩

theorem evs_two_inv {t : State σ} {e1 e2 : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs t [e1, e2] = some vs) : ∃ v1 v2, vs = [v1, v2] ∧ ev t e1 = some v1 ∧ ev t e2 = some v2 := by
  obtain ⟨v1, vs', rfl, h1, h2⟩ := evs_cons_inv h
  obtain ⟨v2, rfl, h3⟩ := evs_one_inv h2
  exact ⟨v1, v2, rfl, h1, h3⟩

/-! ## The first-pass payload -/

/-- `Σ_{i < n} node_ref_len(SLOT i)` -/
def brSum (M : MemSafe.Mem) (ND : BitVec 64) : Nat → BitVec 64
  | 0 => 0
  | n + 1 => brSum M ND n + RL M (rd M (slot ND n))

/-- The first-pass payload. -/
def pl1 (s0 : State σ) (ND PL0 : BitVec 64) : BitVec 64 :=
  if rd s0.memory ND = 2 then PL0 + RL s0.memory (rd s0.memory (ND + BitVec.ofNat 64 48))
  else if rd s0.memory ND = 3 then PL0 + brSum s0.memory ND 16 +
    valLen (ld8W s0 (rd s0.memory (ND + BitVec.ofNat 64 160))) (rd s0.memory (ND + BitVec.ofNat 64 168))
  else PL0

/-- The first-pass states: finish locals, entry memory, globals and byte order. -/
def FP1 (s0 : State σ) (FR ND K PL CB CL : BitVec 64) (t : State σ) : Prop :=
  FL FR ND K PL CB CL t.locals ∧ t.memory = s0.memory ∧ t.globals = s0.globals ∧ t.be = s0.be

theorem fP1_upd {s0 t : State σ} {FR ND K PL CB CL : BitVec 64} (h : FP1 s0 FR ND K PL CB CL t)
    {x : MlS} (hx : FLN x) (v : ValueHOL 64) : FP1 s0 FR ND K PL CB CL (setVarHOLFinite x v t) :=
  ⟨fL_upd h.1 hx v, h.2⟩

theorem fP1_res {s0 t : State σ} {FR ND K PL CB CL : BitVec 64} (h : FP1 s0 FR ND K PL CB CL t)
    {x : MlS} (hx : FLN x) (o : Option (ValueHOL 64)) :
    FP1 s0 FR ND K PL CB CL { t with locals := t.locals.resVarEq (x, o) } :=
  ⟨fL_res h.1 hx o, h.2⟩

/-- `var x = node_ref_len(arg); k` in the first pass, `arg` evaluating to `C`. -/
theorem hoare_nrl (hC : X.code.lookup = guestCode) {s0 : State σ} {FR ND K PL CB CL : BitVec 64}
    {x : MlS} {arg : ExpHOL 64} {k : ProgHOL 64} {Lx : Locals → Prop} {C : BitVec 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (harg : ∀ t : State σ, FP1 s0 FR ND K PL CB CL t → Lx t.locals → ∀ v, ev t arg = some v →
      v = .val (.word C))
    (hQ : ∀ r (t : State σ) o, Q r t → Q r { t with locals := t.locals.resVarEq (x, o) })
    (hk : ∀ t : State σ, FP1 s0 FR ND K PL CB CL t → Lx t.locals →
      Hoare σ X (fun u => u = setVarHOLFinite x (.val (.word (RL s0.memory C))) t) k Q) :
    Hoare σ X (fun t => FP1 s0 FR ND K PL CB CL t ∧ Lx t.locals)
      (.decCall x .one (nm "node_ref_len") [arg] k) Q := by
  refine hoare_decCallS ((ret_node_ref_len hC).and (Spec.Inv.funSpec_be _))
    fun t _ ⟨hFP, hLx⟩ vs hvs callee v st ⟨hR, hbe⟩ _ _ => ?_
  obtain ⟨u, rfl, hu⟩ := evs_one_inv hvs
  obtain rfl := harg t hFP hLx u hu
  obtain ⟨hm, hg, rfl⟩ := hR v rfl C rfl
  have hFP' : FP1 s0 FR ND K PL CB CL { st with locals := t.locals } :=
    ⟨hFP.1, hm.trans hFP.2.1, hg.trans hFP.2.2.1, hbe.trans hFP.2.2.2⟩
  have hm' : (callEntryStateHOLFinite t callee).memory = s0.memory := hFP.2.1
  rw [hm']
  exact hoare_conseq (hk _ hFP' hLx) (fun _ _ h => h) fun r t' _ _ h => hQ r t' _ h

theorem ge16 : ∀ n, n ≤ 16 → wordCmpHOL .less (BitVec.ofNat 64 n) (BitVec.ofNat 64 16) = false →
    n = 16 := by decide

theorem ofNat_toNat_self (I : BitVec 64) : BitVec.ofNat 64 I.toNat = I := by simp

theorem brSum_succ (M : MemSafe.Mem) (ND : BitVec 64) (n : Nat) :
    brSum M ND (n + 1) = brSum M ND n + RL M (rd M (slot ND n)) := rfl

/-- **The first pass.** -/
theorem fin_first (hC : X.code.lookup = guestCode) {s0 : State σ} {FR ND PL0 CB CL : BitVec 64}
    {k : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hk : Hoare σ X (fun t => FP1 s0 FR ND (rd s0.memory ND) (pl1 s0 ND PL0) CB CL t) k Q) :
    Hoare σ X (fun t => FP1 s0 FR ND (rd s0.memory ND) PL0 CB CL t) (.seq finK2 (.seq finK3 k))
      Q := by
  set K := rd s0.memory ND with hK
  set PL2 := if K = 2 then PL0 + RL s0.memory (rd s0.memory (ND + BitVec.ofNat 64 48)) else PL0
    with hPL2
  refine hoare_seq (R := fun r t => r = none ∧ FP1 s0 FR ND K PL2 CB CL t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · unfold finK2
    refine hoare_ite ?_ (hoare_skip fun t _ ⟨hP, hc⟩ => ?_)
    · refine hoare_pre (P := fun t => FP1 s0 FR ND K PL0 CB CL t ∧ (fun _ => K = 2) t.locals) ?_
        fun t _ ⟨hP, w, hw, hw0⟩ => ⟨hP, equal_true (cmp_val_true hw hw0 (ev_lw hP.1.k) (ev_cw _ 2))⟩
      refine hoare_nrl hC (Lx := fun _ => K = 2) (C := rd s0.memory (ND + BitVec.ofNat 64 48))
        (fun t hP _ v hv => by rw [ev_ldN hP.1.node hv, hP.2.1]) ?_ fun t hP hK2 => ?_
      · exact fun r t o h => ⟨h.1, fP1_res h.2 fLN_rl o⟩
      refine hoare_assign fun u _ hu v hv _ => ?_
      subst hu
      rw [ev_add2 (ev_lw (by rw [lk_set_ne _ _ (by decide)]; exact hP.1.payload))
        (ev_lw (lk_set_self _ _ _))] at hv
      cases hv
      have e : PL2 = PL0 + RL s0.memory (rd s0.memory (ND + BitVec.ofNat 64 48)) := if_pos hK2
      refine ⟨rfl, ?_⟩
      rw [e]
      exact ⟨fL_payload (fL_upd hP.1 fLN_rl _) _, hP.2⟩
    · have hK2 : K ≠ 2 := equal_false (cmp_val_false hc (ev_lw hP.1.k) (ev_cw _ 2))
      have e : PL2 = PL0 := if_neg hK2
      exact ⟨rfl, e ▸ hP⟩
  refine hoare_seq (R := fun r t => r = none ∧ FP1 s0 FR ND K (pl1 s0 ND PL0) CB CL t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre hk fun _ _ h => h.2)
  unfold finK3
  refine hoare_ite ?_ (hoare_skip fun t _ ⟨⟨_, hP⟩, hc⟩ => ?_)
  · refine hoare_dec fun t _ ⟨⟨_, hP⟩, w, hw, hw0⟩ v hv _ => ?_
    have hK3 : K = 3 := equal_true (cmp_val_true hw hw0 (ev_lw hP.1.k) (ev_cw _ 3))
    have e2 : PL2 = PL0 := if_neg (by rw [hK3]; decide)
    rw [ev_cw] at hv
    cases hv
    -- the loop over the children
    let Inv : State σ → Prop := fun u => ∃ I : BitVec 64, I.toNat ≤ 16 ∧
      FP1 s0 FR ND K (PL0 + brSum s0.memory ND I.toNat) CB CL u ∧
      u.locals.lookup (nm "i") = some (.val (.word I))
    refine hoare_seq (R := fun r u => r = none ∧ FP1 s0 FR ND K (PL0 + brSum s0.memory ND 16) CB CL u ∧
        ∃ I : BitVec 64, u.locals.lookup (nm "i") = some (.val (.word I))) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_pre (P := Inv) (hoare_while (fun s h => h) ?_ ?_) fun u _ hu => ?_
      · refine hoare_post (Q := fun r u => r = none ∧ Inv u) ?_ fun r u _ _ ⟨hr, h⟩ =>
          ⟨fun _ => h, fun h' => (by subst hr; cases h'), fun h' => (by subst hr; cases h'),
            fun v h' => (by subst hr; cases h')⟩
        refine hoare_pre (P := fun u => ∃ I : BitVec 64, I.toNat < 16 ∧
            FP1 s0 FR ND K (PL0 + brSum s0.memory ND I.toNat) CB CL u ∧
            u.locals.lookup (nm "i") = some (.val (.word I))) ?_
          fun u _ ⟨⟨I, hI, hP, hi⟩, hc⟩ => ⟨I, by
            obtain ⟨wc, hwc, hwc0⟩ := condTrue_iff.mp hc
            exact less16 hI (cmp_val_true hwc hwc0 (ev_lw hi) (ev_cw _ 16)), hP, hi⟩
        refine hoare_exists fun I => ?_
        refine hoare_pre (P := fun u => FP1 s0 FR ND K (PL0 + brSum s0.memory ND I.toNat) CB CL u ∧
            (fun m => I.toNat < 16 ∧ m.lookup (nm "i") = some (.val (.word I))) u.locals) ?_
          fun u _ ⟨hI, hP, hi⟩ => ⟨hP, hI, hi⟩
        unfold finL1
        refine hoare_nrl hC (Lx := fun m => I.toNat < 16 ∧ m.lookup (nm "i") = some (.val (.word I)))
          (C := rd s0.memory (slot ND I.toNat))
          (fun u hP ⟨hI, hi⟩ v hv => by rw [ev_slotE hP.1.node hi hI hv, hP.2.1]) ?_
          fun u hP ⟨hI, hi⟩ => ?_
        · intro r u o ⟨hr, I', hI', hP', hi'⟩
          refine ⟨hr, I', hI', fP1_res hP' fLN_rl2 o, ?_⟩
          rw [lookup_resVarEq_ne _ _ (by decide)]; exact hi'
        refine hoare_seq (R := fun r u' => r = none ∧
            FP1 s0 FR ND K (PL0 + brSum s0.memory ND (I.toNat + 1)) CB CL u' ∧
            u'.locals.lookup (nm "i") = some (.val (.word I))) ?_
          (fun _ _ _ hr _ h => absurd h.1 hr) ?_
        · refine hoare_assign fun u' _ hu' v hv _ => ?_
          subst hu'
          rw [ev_add2 (ev_lw (by rw [lk_set_ne _ _ (by decide)]; exact hP.1.payload))
            (ev_lw (lk_set_self _ _ _))] at hv
          cases hv
          refine ⟨rfl, ⟨?_, hP.2⟩, ?_⟩
          · rw [brSum_succ, ← BitVec.add_assoc]
            exact fL_payload (fL_upd hP.1 fLN_rl2 _) _
          · show (((u.locals.update _).update _)).lookup _ = _
            rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide)]
            exact hi
        · refine hoare_assign fun u' _ ⟨_, hP', hi'⟩ v hv _ => ?_
          rw [ev_add2 (ev_lw hi') (ev_cw _ 1)] at hv
          cases hv
          have e1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_add_k (by omega)
          refine ⟨rfl, I + BitVec.ofNat 64 1, by omega, ?_, lk_set_self _ _ _⟩
          rw [e1]
          exact fP1_upd hP' fLN_i _
      · intro u _ ⟨I, hI, hP, hi⟩ hc
        have h16 := ge16 I.toNat hI (by
          rw [ofNat_toNat_self]; exact cmp_val_false hc (ev_lw hi) (ev_cw _ 16))
        rw [h16] at hP
        exact ⟨rfl, hP, I, hi⟩
      · subst hu
        refine ⟨0, by decide, ⟨fL_upd ?_ fLN_i _, hP.2⟩, lk_set_self _ _ _⟩
        rw [show (0 : BitVec 64).toNat = 0 from rfl, show PL0 + brSum s0.memory ND 0 = PL0 from by
          simp [brSum], ← e2]
        exact hP.1
    · -- `var vl2 = rlp_value_encoded_len(lds (node + 160), lds (node + 168)); payload += vl2`
      refine hoare_decCallS ((funSpec_rlp_value_encoded_len hC).and (Spec.Inv.funSpec_be _))
        fun u _ ⟨_, hP, I, hi⟩ vs hvs callee v st ⟨hR, hbe⟩ _ _ => ?_
      obtain ⟨u1, u2, rfl, h1, h2⟩ := evs_two_inv hvs
      obtain rfl := ev_ldN hP.1.node h1
      obtain rfl := ev_ldN hP.1.node h2
      obtain ⟨hg, hm, hret⟩ := hR (by simp [Good])
      have hv := hret v rfl _ _ rfl
      subst hv
      refine hoare_assign fun u' _ hu' v' hv' _ => ?_
      subst hu'
      rw [ev_add2 (ev_lw (by rw [lk_set_ne _ _ (by decide)]; exact hP.1.payload))
        (ev_lw (lk_set_self _ _ _))] at hv'
      cases hv'
      have hm0 : u.memory = s0.memory := hP.2.1
      have hb0 : u.be = s0.be := hP.2.2.2
      have e3 : PL0 + brSum s0.memory ND 16 + valLen (ld8W (callEntryStateHOLFinite u callee)
          (rd u.memory (ND + BitVec.ofNat 64 160))) (rd u.memory (ND + BitVec.ofNat 64 168)) =
          pl1 s0 ND PL0 := by
        rw [pl1, ← hK, if_neg (by rw [hK3]; decide), if_pos hK3]
        show PL0 + _ + valLen (BitVec.ofNat 64 (byteOf u.memory u.be _)) _ = _
        rw [hm0, hb0]
        rfl
      refine ⟨rfl, ?_⟩
      rw [← e3]
      exact ⟨fL_res (fL_res (fL_payload (fL_upd hP.1 fLN_vl2 _) _) fLN_vl2 _) fLN_i _,
        hm.trans hm0, hg.trans hP.2.2.1, hbe.trans hb0⟩
  · have hK3 : K ≠ 3 := equal_false (cmp_val_false hc (ev_lw hP.1.k) (ev_cw _ 3))
    refine ⟨rfl, ?_⟩
    have e : pl1 s0 ND PL0 = PL2 := by
      rw [pl1, ← hK]
      by_cases h2 : K = 2
      · rw [if_pos h2, hPL2, if_pos h2]
      · rw [if_neg h2, if_neg hK3, hPL2, if_neg h2]
    rw [e]
    exact hP

end InitECandidate.Solver.Spec.Mpt.Leaves
