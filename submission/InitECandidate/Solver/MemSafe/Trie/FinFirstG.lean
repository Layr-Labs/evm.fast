import InitECandidate.Solver.MemSafe.Trie.FinSecondG

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# The first pass of `_node_rlp_finish`, exception-inclusive
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- `var x = node_ref_len(arg); k` in the first pass. -/
theorem gnrl (hC : X.code.lookup = guestCode) {s0 : State σ} {FR ND K PL CB CL : BitVec 64}
    {x : MlS} {arg : ExpHOL 64} {k : ProgHOL 64} {Lx : Locals → Prop} {C : BitVec 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (harg : ∀ t : State σ, FP1 s0 FR ND K PL CB CL t → Lx t.locals → ∀ v, ev t arg = some v →
      v = .val (.word C))
    (hQ : ∀ r (t : State σ) o, Q r t → Q r { t with locals := t.locals.resVarEq (x, o) })
    (hex : ∀ r (t : State σ), Clean s0 t → Abn r → Q (some r) (emptyLocalsHOLFinite t))
    (hk : ∀ t : State σ, FP1 s0 FR ND K PL CB CL t → Lx t.locals →
      HoareG σ X (fun u => u = setVarHOLFinite x (.val (.word (RL s0.memory C))) t) k Q) :
    HoareG σ X (fun t => FP1 s0 FR ND K PL CB CL t ∧ Lx t.locals)
      (.decCall x .one (nm "node_ref_len") [arg] k) Q := by
  refine hoareG_decCall ((spec_nrl hC).and (Spec.Inv.funSpec_be _)) ?_ ?_
  · intro t _ ⟨hFP, hLx⟩ vs hvs callee v st ⟨hR, hbe⟩ _ _
    obtain ⟨u, rfl, hu⟩ := evs_one_inv hvs
    obtain rfl := harg t hFP hLx u hu
    obtain ⟨hcl, hret⟩ := hR (by simp [Good])
    have hv := hret v rfl C rfl
    subst hv
    have hFP' : FP1 s0 FR ND K PL CB CL { st with locals := t.locals } :=
      ⟨hFP.1, hcl.1.trans hFP.2.1, hcl.2.trans hFP.2.2.1, hbe.trans hFP.2.2.2⟩
    have hm' : (callEntryStateHOLFinite t callee).memory = s0.memory := hFP.2.1
    rw [hm']
    exact hoareG_conseq (hk _ hFP' hLx) (fun _ _ h => h) fun r t' _ _ h => hQ r t' _ h
  · intro t _ ⟨hFP, hLx⟩ vs hvs callee r st ⟨hR, hbe⟩ _ habn
    obtain ⟨hcl, -⟩ := hR (abn_good habn)
    exact hex r st ⟨hcl.1.trans hFP.2.1, hcl.2.trans hFP.2.2.1⟩ habn

/-- Normal ends in `S`, abnormal ends in `Q`. -/
def PQ (S : State σ → Prop) (Q : Option (PanSemResultExact 64) → State σ → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none ∧ S t) ∨ (∃ r', r = some r' ∧ Abn r' ∧ Q (some r') t)

theorem pq_seq_mid {S : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {r : Option (PanSemResultExact 64)} {t : State σ} (hr : r ≠ none) (h : PQ S Q r t) : Q r t := by
  rcases h with h | ⟨r', rfl, -, h⟩
  · exact absurd h.1 hr
  · exact h

theorem pq_cont {S : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {t : State σ} (h : PQ S Q none t) : S t := by
  rcases h with h | ⟨r', hr', -⟩
  · exact h.2
  · cases hr'

theorem pq_res {S : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {x : MlS} {o : Option (ValueHOL 64)}
    (hS : ∀ t : State σ, S t → S { t with locals := t.locals.resVarEq (x, o) })
    (hQ : ∀ r (t : State σ), Q r t → Q r { t with locals := t.locals.resVarEq (x, o) })
    {r} {t : State σ} (h : PQ S Q r t) : PQ S Q r { t with locals := t.locals.resVarEq (x, o) } := by
  rcases h with ⟨hr, h⟩ | ⟨r', hr, hab, h⟩
  · exact Or.inl ⟨hr, hS _ h⟩
  · exact Or.inr ⟨r', hr, hab, hQ _ _ h⟩

/-- **The first pass.** -/
theorem fin_firstG (hC : X.code.lookup = guestCode) (hX0 : DomBounded X) {s0 : State σ} {FR ND PL0 CB CL : BitVec 64}
    {k : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ r (t : State σ) o x, Q r t → Q r { t with locals := t.locals.resVarEq (x, o) })
    (hQL : ∀ r (t : State σ) (L : Locals), Q r t → Q r { t with locals := L })
    (hex : ∀ r (t : State σ), Clean s0 t → Abn r → Q (some r) t)
    (hk : HoareG σ X (fun t => FP1 s0 FR ND (rd s0.memory ND) (pl1 s0 ND PL0) CB CL t) k Q) :
    HoareG σ X (fun t => FP1 s0 FR ND (rd s0.memory ND) PL0 CB CL t) (.seq finK2 (.seq finK3 k)) Q := by
  set K := rd s0.memory ND with hK
  set PL2 := if K = 2 then PL0 + RL s0.memory (rd s0.memory (ND + BitVec.ofNat 64 48)) else PL0
    with hPL2
  have hexE : ∀ r (t : State σ), Clean s0 t → Abn r → Q (some r) (emptyLocalsHOLFinite t) :=
    fun r t h hab => hQL _ _ _ (hex r t h hab)
  refine hoareG_seq (R := PQ (FP1 s0 FR ND K PL2 CB CL) Q) ?_ (fun _ _ _ hr _ h => pq_seq_mid hr h) ?_
  · unfold finK2
    refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨hP, hc⟩ => ?_)
    · refine hoareG_pre (P := fun t => FP1 s0 FR ND K PL0 CB CL t ∧ (fun _ => K = 2) t.locals) ?_
        fun t _ ⟨hP, w, hw, hw0⟩ => ⟨hP, equal_true (cmp_val_true hw hw0 (ev_lw hP.1.k) (ev_cw _ 2))⟩
      refine gnrl hC (Lx := fun _ => K = 2) (C := rd s0.memory (ND + BitVec.ofNat 64 48))
        (fun t hP _ v hv => by rw [ev_ldN hP.1.node hv, hP.2.1]) ?_ ?_ fun t hP hK2 => ?_
      · exact fun r t o h => pq_res (S := FP1 s0 FR ND K PL2 CB CL) (Q := Q) (x := nm "rl") (o := o) (fun t h => fP1_res h fLN_rl o)
          (fun r t h => hQ r t o (nm "rl") h) h
      · exact fun r t h hab => Or.inr ⟨r, rfl, hab, hexE r t h hab⟩
      refine hoareG_assign fun u _ hu v hv _ => ?_
      subst hu
      rw [ev_add2 (ev_lw (by rw [lk_set_ne _ _ (by decide)]; exact hP.1.payload))
        (ev_lw (lk_set_self _ _ _))] at hv
      cases hv
      have e : PL2 = PL0 + RL s0.memory (rd s0.memory (ND + BitVec.ofNat 64 48)) := if_pos hK2
      refine Or.inl ⟨rfl, ?_⟩
      rw [e]
      exact ⟨fL_payload (fL_upd hP.1 fLN_rl _) _, hP.2⟩
    · have hK2 : K ≠ 2 := equal_false (cmp_val_false hc (ev_lw hP.1.k) (ev_cw _ 2))
      have e : PL2 = PL0 := if_neg hK2
      exact Or.inl ⟨rfl, e ▸ hP⟩
  refine hoareG_seq (R := PQ (FP1 s0 FR ND K (pl1 s0 ND PL0) CB CL) Q) ?_
    (fun _ _ _ hr _ h => pq_seq_mid hr h) (hoareG_pre hk fun _ _ h => pq_cont h)
  refine hoareG_pre (P := fun t => FP1 s0 FR ND K PL2 CB CL t) ?_ (fun _ _ h => pq_cont h)
  unfold finK3
  refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨hP, hc⟩ => ?_)
  · refine hoareG_dec fun t _ ⟨hP, w, hw, hw0⟩ v hv _ => ?_
    have hK3 : K = 3 := equal_true (cmp_val_true hw hw0 (ev_lw hP.1.k) (ev_cw _ 3))
    have e2 : PL2 = PL0 := if_neg (by rw [hK3]; decide)
    rw [ev_cw] at hv
    cases hv
    let Inv : State σ → Prop := fun u => ∃ I : BitVec 64, I.toNat ≤ 16 ∧
      FP1 s0 FR ND K (PL0 + brSum s0.memory ND I.toNat) CB CL u ∧
      u.locals.lookup (nm "i") = some (.val (.word I))
    let LQ : Option (PanSemResultExact 64) → State σ → Prop := PQ
      (fun u => FP1 s0 FR ND K (PL0 + brSum s0.memory ND 16) CB CL u ∧
        ∃ I : BitVec 64, u.locals.lookup (nm "i") = some (.val (.word I))) Q
    refine hoareG_seq (R := LQ) ?_ (fun r t _ hr _ h => ?_) ?_
    · refine hoareG_pre (P := Inv) (hoareG_while (fun s h => h) ?_ ?_) fun u _ hu => ?_
      · -- the body
        refine hoareG_conseq (Q := PQ Inv Q) ?_ (fun _ _ h => h) ?_
        swap
        · intro r t _ _ h
          rcases h with ⟨hr, h⟩ | ⟨r', hr, hab, h⟩
          · exact ⟨fun _ => h, (fun hc => by rw [hr] at hc; cases hc), (fun hb => by rw [hr] at hb; cases hb),
              (fun r' hr' _ _ => by rw [hr] at hr'; cases hr')⟩
          · subst hr
            refine ⟨(fun h' => by cases h'), (fun hc => ?_), (fun hb => ?_), (fun r'' hr'' _ _ => ?_)⟩
            · cases hc; rcases hab with ⟨e, v, h⟩ | ⟨e, h⟩ <;> cases h
            · cases hb; rcases hab with ⟨e, v, h⟩ | ⟨e, h⟩ <;> cases h
            · cases hr''; exact Or.inr ⟨r', rfl, hab, h⟩
        refine hoareG_pre (P := fun u => ∃ I : BitVec 64, I.toNat < 16 ∧
            FP1 s0 FR ND K (PL0 + brSum s0.memory ND I.toNat) CB CL u ∧
            u.locals.lookup (nm "i") = some (.val (.word I))) ?_
          fun u _ ⟨⟨I, hI, hP, hi⟩, hc⟩ => ⟨I, by
            obtain ⟨wc, hwc, hwc0⟩ := condTrue_iff.mp hc
            exact less16 hI (cmp_val_true hwc hwc0 (ev_lw hi) (ev_cw _ 16)), hP, hi⟩
        refine hoareG_exists fun I => ?_
        refine hoareG_pre (P := fun u => FP1 s0 FR ND K (PL0 + brSum s0.memory ND I.toNat) CB CL u ∧
            (fun m => I.toNat < 16 ∧ m.lookup (nm "i") = some (.val (.word I))) u.locals) ?_
          fun u _ ⟨hI, hP, hi⟩ => ⟨hP, hI, hi⟩
        unfold finL1
        refine gnrl hC (Lx := fun m => I.toNat < 16 ∧ m.lookup (nm "i") = some (.val (.word I)))
          (C := rd s0.memory (slot ND I.toNat))
          (fun u hP ⟨hI, hi⟩ v hv => by rw [ev_slotE hP.1.node hi hI hv, hP.2.1]) ?_ ?_
          fun u hP ⟨hI, hi⟩ => ?_
        · intro r u o h
          refine pq_res (S := Inv) (Q := Q) (x := nm "rl2") (o := o) ?_ (fun r t h => hQ r t o _ h) h
          rintro t ⟨I', hI', hP', hi'⟩
          refine ⟨I', hI', fP1_res hP' fLN_rl2 o, ?_⟩
          rw [lookup_resVarEq_ne _ _ (by decide)]; exact hi'
        · exact fun r t h hab => Or.inr ⟨r, rfl, hab, hexE r t h hab⟩
        refine hoareG_seq (R := fun r u' => r = none ∧
            FP1 s0 FR ND K (PL0 + brSum s0.memory ND (I.toNat + 1)) CB CL u' ∧
            u'.locals.lookup (nm "i") = some (.val (.word I))) ?_
          (fun _ _ _ hr _ h => absurd h.1 hr) ?_
        · refine hoareG_assign fun u' _ hu' v hv _ => ?_
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
        · refine hoareG_assign fun u' _ ⟨_, hP', hi'⟩ v hv _ => ?_
          rw [ev_add2 (ev_lw hi') (ev_cw _ 1)] at hv
          cases hv
          have e1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_add_k (by omega)
          refine Or.inl ⟨rfl, I + BitVec.ofNat 64 1, by omega, ?_, lk_set_self _ _ _⟩
          rw [e1]
          exact fP1_upd hP' fLN_i _
      · intro u _ ⟨I, hI, hP, hi⟩ hc
        have h16 := ge16 I.toNat hI (by
          rw [ofNat_toNat_self]; exact cmp_val_false hc (ev_lw hi) (ev_cw _ 16))
        rw [h16] at hP
        exact Or.inl ⟨rfl, hP, I, hi⟩
      · subst hu
        refine ⟨0, by decide, ⟨fL_upd ?_ fLN_i _, hP.2⟩, lk_set_self _ _ _⟩
        rw [show (0 : BitVec 64).toNat = 0 from rfl, show PL0 + brSum s0.memory ND 0 = PL0 from by
          simp [brSum], ← e2]
        exact hP.1
    · rcases h with ⟨h1, -⟩ | ⟨r', hr', hab, h⟩
      · exact absurd h1 hr
      · exact Or.inr ⟨r', hr', hab, hQ _ _ _ _ h⟩
    · -- `var vl2 = rlp_value_encoded_len(lds (node + 160), lds (node + 168)); payload += vl2`
      refine hoareG_pre (P := fun u => (FP1 s0 FR ND K (PL0 + brSum s0.memory ND 16) CB CL u ∧
        ∃ I : BitVec 64, u.locals.lookup (nm "i") = some (.val (.word I)))) ?_ (fun _ _ h => pq_cont h)
      refine hoareG_decCallS ((funSpec_rlp_value_encoded_len hC).and (Spec.Inv.funSpec_be _))
        (Rec.ef_of_table hC hX0 (by decide_cbv))
        fun u _ ⟨hP, I, hi⟩ vs hvs callee v st ⟨hR, hbe⟩ _ _ => ?_
      obtain ⟨u1, u2, rfl, h1, h2⟩ := evs_two_inv hvs
      obtain rfl := ev_ldN hP.1.node h1
      obtain rfl := ev_ldN hP.1.node h2
      obtain ⟨hg, hm, hret⟩ := hR (by simp [Good])
      have hv := hret v rfl _ _ rfl
      subst hv
      refine hoareG_assign fun u' _ hu' v' hv' _ => ?_
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
      refine Or.inl ⟨rfl, ?_⟩
      rw [← e3]
      exact ⟨fL_res (fL_res (fL_payload (fL_upd hP.1 fLN_vl2 _) _) fLN_vl2 _) fLN_i _,
        hm.trans hm0, hg.trans hP.2.2.1, hbe.trans hb0⟩

  · have hK3 : K ≠ 3 := equal_false (cmp_val_false hc (ev_lw hP.1.k) (ev_cw _ 3))
    refine Or.inl ⟨rfl, ?_⟩
    have e : pl1 s0 ND PL0 = PL2 := by
      rw [pl1, ← hK]
      by_cases h2 : K = 2
      · rw [if_pos h2, hPL2, if_pos h2]
      · rw [if_neg h2, if_neg hK3, hPL2, if_neg h2]
    rw [e]
    exact hP

end InitECandidate.Solver.MemSafe.Trie
