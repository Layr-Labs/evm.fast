import InitECandidate.Solver.Spec.Inv.HtabDelExtra

/-!
# `htab_del` deletes the last entry: the Hoare proof

`delBody_hoare`: run from an entry state whose table at `T` is well formed with a positive
count, on the key of the last entry, `htab_del`'s body returns only with memory
`delMem m T` (the pure model of `Inv/HtabDelMem.lean`) and the entry byte order.
`delSpec_tableWF` then discharges `DelSpec σ X TableWF` (`Inv/Htab.lean`), and
`delSpecM_tableWF` adds the modifies clause.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The local `x` holds the word `w`. -/
def DLk (u : PanSemStateFiniteExact 64 σ) (x : String) (w : BitVec 64) : Prop :=
  u.locals.lookup (nm x) = some (.val (.word w))

theorem word_inj {a b : BitVec 64}
    (h : (some (ValueHOL.val (HolWordLab.word a)) : Option (ValueHOL 64)) = some (.val (.word b))) :
    a = b := by
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
  exact h

theorem lk_set (s : PanSemStateFiniteExact 64 σ) (n q : MlS) (v : ValueHOL 64) :
    (setVarHOLFinite n v s).locals.lookup q = if n = q then some v else s.locals.lookup q := by
  by_cases h : n = q
  · subst h; rw [if_pos rfl]; exact lk_set_self _ _ _
  · rw [if_neg h]; exact lk_set_ne _ _ h

theorem lk_restore (t : PanSemStateFiniteExact 64 σ) (n q : MlS) (old : Option (ValueHOL 64))
    (h : n ≠ q) : ({ t with locals := t.locals.resVarEq (n, old) } : PanSemStateFiniteExact 64 σ).locals.lookup q =
      t.locals.lookup q := lookup_resVarEq_ne _ _ h

theorem ev_lv_w {u : PanSemStateFiniteExact 64 σ} {x : String} {w : BitVec 64} (h : DLk u x w) :
    ev u (lv (nm x)) = some (.val (.word w)) := h

theorem ev_nA_load {u : PanSemStateFiniteExact 64 σ} {x : String} {N i : BitVec 64} {off : Nat}
    {v : ValueHOL 64} (hN : DLk u "nodes" N) (hi : DLk u x i)
    (h : ev u (.load .one (nA x off)) = some v) : v = .val (.word (rd u.memory (na N i off))) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one h
  rw [nA, ev_add3 (ev_lv_w hN) (ev_mul2 (ev_lv_w hi) (ev_cw u 32)) (ev_cw u off)] at hw
  cases hw
  rw [mem_word u.memory]
  unfold na
  rw [BitVec.add_assoc]

theorem ev_nA {u : PanSemStateFiniteExact 64 σ} {x : String} {N i : BitVec 64} {off : Nat}
    (hN : DLk u "nodes" N) (hi : DLk u x i) :
    ev u (nA x off) = some (.val (.word (na N i off))) := by
  rw [nA, ev_add3 (ev_lv_w hN) (ev_mul2 (ev_lv_w hi) (ev_cw u 32)) (ev_cw u off)]
  unfold na
  rw [BitVec.add_assoc]

theorem ev_tAddr {u : PanSemStateFiniteExact 64 σ} {T : BitVec 64} {k : Nat} (hT : DLk u "t" T) :
    ev u (tAddr k) = some (.val (.word (T + BitVec.ofNat 64 k))) :=
  ev_add2 (ev_lv_w hT) (ev_cw u k)

theorem ev_tLoad_w {u : PanSemStateFiniteExact 64 σ} {T : BitVec 64} {k : Nat} {v : ValueHOL 64}
    (hT : DLk u "t" T) (h : ev u (tLoad k) = some v) :
    v = .val (.word (rd u.memory (T + BitVec.ofNat 64 k))) := by
  rw [ev_tLoad_inv hT h, mem_word u.memory]

/-- An equality test of two words: true and false cases. -/
theorem cmp_eq_true {u : PanSemStateFiniteExact 64 σ} {a b : ExpHOL 64} {x y w : BitVec 64}
    (ha : ev u a = some (.val (.word x))) (hb : ev u b = some (.val (.word y)))
    (h : ev u (.cmp .equal a b) = some (.val (.word w))) (hw : w ≠ 0) : x = y := by
  obtain ⟨x', y', ha', hb', hc⟩ := cmp_true h hw
  rw [ha] at ha'; rw [hb] at hb'
  cases ha'; cases hb'
  simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hc

theorem cmp_eq_false {u : PanSemStateFiniteExact 64 σ} {a b : ExpHOL 64} {x y : BitVec 64}
    (ha : ev u a = some (.val (.word x))) (hb : ev u b = some (.val (.word y)))
    (h : ev u (.cmp .equal a b) = some (.val (.word 0))) : x ≠ y := by
  obtain ⟨x', y', ha', hb', hc⟩ := cmp_false h
  rw [ha] at ha'; rw [hb] at hb'
  cases ha'; cases hb'
  simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hc

macro "lks" : tactic => `(tactic| (
  unfold DLk at *
  simp (config := {decide := true, zetaDelta := true}) only [lk_set, lk_restore, lookup_restore, if_true, if_false] <;>
    first | assumption | rfl | skip))

/-! ## The splice -/

section splice
variable (m : Mem) (be0 : Bool) (T : BitVec 64)

def SpliceP (u : PanSemStateFiniteExact 64 σ) : Prop :=
  u.memory = dM1 m T ∧ u.be = be0 ∧ DLk u "t" T ∧ DLk u "leaf" (dLeaf m T) ∧
    DLk u "nodes" (hdr m T 40)

def SpliceQ (r : Option (PanSemResultExact 64)) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  r = none ∧ u.memory = dM2B m T ∧ u.be = be0 ∧ DLk u "t" T ∧ DLk u "leaf" (dLeaf m T) ∧
    DLk u "nodes" (hdr m T 40)

/-- The lookups the splice keeps. -/
def SpLk (u : PanSemStateFiniteExact 64 σ) : Prop :=
  DLk u "t" T ∧ DLk u "leaf" (dLeaf m T) ∧ DLk u "nodes" (hdr m T 40) ∧ DLk u "p" (dP m T) ∧
    DLk u "g" (dG m T) ∧ DLk u "s" (dS m T)

def SpR (M : Mem) (r : Option (PanSemResultExact 64)) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  r = none ∧ u.memory = M ∧ u.be = be0 ∧ SpLk m T u

theorem splice_tail :
    Hoare σ X (SpR m be0 T (dM1 m T) none)
      (.seq (.store (nA "s" 0) (lv (nm "g")))
        (.seq (.ite (.cmp .equal (lv (nm "g")) (cw 0))
                (.store (tAddr 56) (lv (nm "s")))
                (.ite (.cmp .equal (.load .one (nA "g" 8)) (lv (nm "p")))
                  (.store (nA "g" 8) (lv (nm "s")))
                  (.store (nA "g" 16) (lv (nm "s")))))
          (.seq (.store (nA "p" 0) (tLoad 72))
            (.store (tAddr 72) (lv (nm "p"))))))
      (SpR m be0 T (dM2B m T)) := by
  refine hoare_seq (R := SpR m be0 T (dMa m T)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store_w (fun _ => na (hdr m T 40) (dS m T) 0) (fun _ => dG m T) ?_ ?_ ?_
    · rintro t _ ⟨-, -, -, _, _, hN, _, _, hs⟩ w hw
      rw [ev_nA hN hs] at hw; exact (word_inj hw).symm
    · rintro t _ ⟨-, -, -, _, _, _, _, hg, _⟩ v hv
      rw [ev_lv_w hg] at hv; exact (Option.some.inj hv).symm
    · rintro t _ ⟨-, hm, hbe, hl⟩
      refine ⟨rfl, ?_, hbe, hl⟩
      show upd t.memory _ _ = _
      rw [hm]; rfl
  refine hoare_seq (R := SpR m be0 T (dMb m T)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_store_w (fun _ => T + BitVec.ofNat 64 56) (fun _ => dS m T) ?_ ?_ ?_
      · rintro t _ ⟨⟨-, -, -, hT, -⟩, -⟩ w hw
        rw [ev_tAddr hT] at hw; exact (word_inj hw).symm
      · rintro t _ ⟨⟨-, -, -, _, _, _, _, _, hs⟩, -⟩ v hv
        rw [ev_lv_w hs] at hv; exact (Option.some.inj hv).symm
      · rintro t _ ⟨⟨-, hm, hbe, hl⟩, w, hw, hw0⟩
        have hg0 : dG m T = 0 := cmp_eq_true (ev_lv_w hl.2.2.2.2.1) (ev_cw t 0) hw hw0
        refine ⟨rfl, ?_, hbe, hl⟩
        show upd t.memory _ _ = _
        rw [hm]; unfold dMb; rw [if_pos hg0]
    · refine hoare_ite ?_ ?_
      · refine hoare_store_w (fun _ => na (hdr m T 40) (dG m T) 8) (fun _ => dS m T) ?_ ?_ ?_
        · rintro t _ ⟨⟨⟨-, -, -, _, _, hN, _, hg, _⟩, -⟩, -⟩ w hw
          rw [ev_nA hN hg] at hw; exact (word_inj hw).symm
        · rintro t _ ⟨⟨⟨-, -, -, _, _, _, _, _, hs⟩, -⟩, -⟩ v hv
          rw [ev_lv_w hs] at hv; exact (Option.some.inj hv).symm
        · rintro t _ ⟨⟨⟨-, hm, hbe, hl⟩, hc0⟩, w, hw, hw0⟩
          have hg0 : dG m T ≠ 0 := cmp_eq_false (ev_lv_w hl.2.2.2.2.1) (ev_cw t 0) hc0
          obtain ⟨v8, hv8⟩ : ∃ v8, ev t (.load .one (nA "g" 8)) = some v8 := by
            obtain ⟨x, y, hx, -, -⟩ := cmp_true hw hw0
            exact ⟨_, hx⟩
          have e := ev_nA_load hl.2.2.1 hl.2.2.2.2.1 hv8
          rw [hm] at e
          subst e
          have hgp : rd (dMa m T) (na (hdr m T 40) (dG m T) 8) = dP m T :=
            cmp_eq_true hv8 (ev_lv_w hl.2.2.2.1) hw hw0
          refine ⟨rfl, ?_, hbe, hl⟩
          show upd t.memory _ _ = _
          rw [hm]; unfold dMb; rw [if_neg hg0, if_pos hgp]
      · refine hoare_store_w (fun _ => na (hdr m T 40) (dG m T) 16) (fun _ => dS m T) ?_ ?_ ?_
        · rintro t _ ⟨⟨⟨-, -, -, _, _, hN, _, hg, _⟩, -⟩, -⟩ w hw
          rw [ev_nA hN hg] at hw; exact (word_inj hw).symm
        · rintro t _ ⟨⟨⟨-, -, -, _, _, _, _, _, hs⟩, -⟩, -⟩ v hv
          rw [ev_lv_w hs] at hv; exact (Option.some.inj hv).symm
        · rintro t _ ⟨⟨⟨-, hm, hbe, hl⟩, hc0⟩, hw⟩
          have hg0 : dG m T ≠ 0 := cmp_eq_false (ev_lv_w hl.2.2.2.2.1) (ev_cw t 0) hc0
          obtain ⟨v8, hv8⟩ : ∃ v8, ev t (.load .one (nA "g" 8)) = some v8 := by
            obtain ⟨x, y, hx, -, -⟩ := cmp_false hw
            exact ⟨_, hx⟩
          have e := ev_nA_load hl.2.2.1 hl.2.2.2.2.1 hv8
          rw [hm] at e
          subst e
          have hgp : rd (dMa m T) (na (hdr m T 40) (dG m T) 8) ≠ dP m T :=
            cmp_eq_false hv8 (ev_lv_w hl.2.2.2.1) hw
          refine ⟨rfl, ?_, hbe, hl⟩
          show upd t.memory _ _ = _
          rw [hm]; unfold dMb; rw [if_neg hg0, if_neg hgp]
  refine hoare_seq (R := SpR m be0 T (dMc m T)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store_w (fun _ => na (hdr m T 40) (dP m T) 0)
      (fun _ => rd (dMb m T) (T + BitVec.ofNat 64 72)) ?_ ?_ ?_
    · rintro t _ ⟨-, -, -, _, _, hN, hp, _⟩ w hw
      rw [ev_nA hN hp] at hw; exact (word_inj hw).symm
    · rintro t _ ⟨-, hm, -, hT, _⟩ v hv
      rw [ev_tLoad_w hT hv, hm]
    · rintro t _ ⟨-, hm, hbe, hl⟩
      refine ⟨rfl, ?_, hbe, hl⟩
      show upd t.memory _ _ = _
      rw [hm]; rfl
  · refine hoare_store_w (fun _ => T + BitVec.ofNat 64 72) (fun _ => dP m T) ?_ ?_ ?_
    · rintro t _ ⟨-, -, -, hT, _⟩ w hw
      rw [ev_tAddr hT] at hw; exact (word_inj hw).symm
    · rintro t _ ⟨-, -, -, _, _, _, hp, _⟩ v hv
      rw [ev_lv_w hp] at hv; exact (Option.some.inj hv).symm
    · rintro t _ ⟨-, hm, hbe, hl⟩
      refine ⟨rfl, ?_, hbe, hl⟩
      show upd t.memory _ _ = _
      rw [hm]; rfl

/-- The splice after its three declarations. -/
theorem splice_mid (U : PanSemStateFiniteExact 64 σ) (hmU : U.memory = dM1 m T) (hbU : U.be = be0)
    (hTU : DLk U "t" T) (hℓU : DLk U "leaf" (dLeaf m T)) (hNU : DLk U "nodes" (hdr m T 40))
    (hpU : DLk U "p" (dP m T)) (hgU : DLk U "g" (dG m T))
    (hsU : DLk U "s" (rd (dM1 m T) (na (hdr m T 40) (dP m T) 8))) :
    Hoare σ X (fun t => t = U)
      (.seq (.ite (.cmp .equal (lv (nm "s")) (lv (nm "leaf")))
                (.assign .local (nm "s") (.load .one (nA "p" 16))) .skip)
          (.seq (.store (nA "s" 0) (lv (nm "g")))
            (.seq (.ite (.cmp .equal (lv (nm "g")) (cw 0))
                    (.store (tAddr 56) (lv (nm "s")))
                    (.ite (.cmp .equal (.load .one (nA "g" 8)) (lv (nm "p")))
                      (.store (nA "g" 8) (lv (nm "s")))
                      (.store (nA "g" 16) (lv (nm "s")))))
              (.seq (.store (nA "p" 0) (tLoad 72))
                (.store (tAddr 72) (lv (nm "p")))))))
      (SpR m be0 T (dM2B m T)) := by
  refine hoare_seq (R := SpR m be0 T (dM1 m T)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr)
    (splice_tail m be0 T)
  refine hoare_ite ?_ ?_
  · refine hoare_assign fun t _ ⟨ht, w, hw, hw0⟩ v hv _ => ?_
    subst ht
    have hs0 : rd (dM1 m T) (na (hdr m T 40) (dP m T) 8) = dLeaf m T :=
      cmp_eq_true (ev_lv_w hsU) (ev_lv_w hℓU) hw hw0
    have e := ev_nA_load hNU hpU hv
    rw [hmU] at e
    subst e
    refine ⟨rfl, hmU, hbU, by lks, by lks, by lks, by lks, by lks, ?_⟩
    unfold DLk
    rw [lk_set_self]
    unfold dS
    rw [if_pos hs0]
  · refine hoare_skip fun t _ ⟨ht, hw⟩ => ?_
    subst ht
    have hs0 : rd (dM1 m T) (na (hdr m T 40) (dP m T) 8) ≠ dLeaf m T :=
      cmp_eq_false (ev_lv_w hsU) (ev_lv_w hℓU) hw
    refine ⟨rfl, hmU, hbU, hTU, hℓU, hNU, hpU, hgU, ?_⟩
    have : dS m T = rd (dM1 m T) (na (hdr m T 40) (dP m T) 8) := by
      unfold dS; rw [if_neg hs0]
    rw [this]; exact hsU

theorem splice_hoare : Hoare σ X (SpliceP m be0 T) delSplice (SpliceQ m be0 T) := by
  refine hoare_dec fun u _ ⟨hm, hbe, hT, hℓ, hN⟩ vp hvp _ => ?_
  have e := ev_nA_load hN hℓ hvp
  rw [hm] at e
  subst e
  refine hoare_dec fun u1 _ hu1 vg hvg _ => ?_
  have hu1' : u1 = setVarHOLFinite (nm "p") (.val (.word (dP m T))) u := hu1
  subst hu1'
  have hp1 : DLk (setVarHOLFinite (nm "p") (.val (.word (dP m T))) u) "p" (dP m T) := by lks
  have hN1 : DLk (setVarHOLFinite (nm "p") (.val (.word (dP m T))) u) "nodes" (hdr m T 40) := by lks
  have e := ev_nA_load hN1 hp1 hvg
  have hm1 : (setVarHOLFinite (nm "p") (.val (.word (dP m T))) u).memory = dM1 m T := hm
  rw [hm1] at e
  subst e
  refine hoare_dec fun u2 _ hu2 vs hvs _ => ?_
  have hu2' : u2 = setVarHOLFinite (nm "g") (.val (.word (dG m T)))
      (setVarHOLFinite (nm "p") (.val (.word (dP m T))) u) := hu2
  subst hu2'
  have hp2 : DLk (setVarHOLFinite (nm "g") (.val (.word (dG m T)))
      (setVarHOLFinite (nm "p") (.val (.word (dP m T))) u)) "p" (dP m T) := by lks
  have hN2 : DLk (setVarHOLFinite (nm "g") (.val (.word (dG m T)))
      (setVarHOLFinite (nm "p") (.val (.word (dP m T))) u)) "nodes" (hdr m T 40) := by lks
  have e := ev_nA_load hN2 hp2 hvs
  have hm2 : (setVarHOLFinite (nm "g") (.val (.word (dG m T)))
      (setVarHOLFinite (nm "p") (.val (.word (dP m T))) u)).memory = dM1 m T := hm
  rw [hm2] at e
  subst e
  exact hoare_post (splice_mid m be0 T _ hm (by exact hbe) (by lks) (by lks) (by lks) (by lks)
    (by lks) (by lks)) fun r t _ _ ⟨hr, hm', hbe', hT', hℓ', hN', _⟩ =>
      ⟨hr, hm', hbe', by lks, by lks, by lks⟩

end splice

/-! ## The tail -/

section tail
variable (m : Mem) (be0 : Bool) (T : BitVec 64)

def DelPostQ (r : Option (PanSemResultExact 64)) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  ∀ v, r = some (.returned v) → u.memory = delMem m T ∧ u.be = be0

def TlR (M : Mem) (r : Option (PanSemResultExact 64)) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  r = none ∧ u.memory = M ∧ u.be = be0 ∧ DLk u "t" T ∧ DLk u "leaf" (dLeaf m T) ∧
    DLk u "nodes" (hdr m T 40)

theorem tail_end :
    Hoare σ X (TlR m be0 T (dM2 m T) none)
      (.seq (.store (nA "leaf" 0) (tLoad 72))
        (.seq (.store (tAddr 72) (lv (nm "leaf"))) (.return (cw 1))))
      (DelPostQ m be0 T) := by
  refine hoare_seq (R := TlR m be0 T (dM3 m T)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store_w (fun _ => na (hdr m T 40) (dLeaf m T) 0)
      (fun _ => rd (dM2 m T) (T + BitVec.ofNat 64 72)) ?_ ?_ ?_
    · rintro t _ ⟨-, -, -, _, hℓ, hN⟩ w hw
      rw [ev_nA hN hℓ] at hw; exact (word_inj hw).symm
    · rintro t _ ⟨-, hm, -, hT, _⟩ v hv
      rw [ev_tLoad_w hT hv, hm]
    · rintro t _ ⟨-, hm, hbe, hl⟩
      refine ⟨rfl, ?_, hbe, hl⟩
      show upd t.memory _ _ = _
      rw [hm]; rfl
  refine hoare_seq (R := TlR m be0 T (delMem m T)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store_w (fun _ => T + BitVec.ofNat 64 72) (fun _ => dLeaf m T) ?_ ?_ ?_
    · rintro t _ ⟨-, -, -, hT, _⟩ w hw
      rw [ev_tAddr hT] at hw; exact (word_inj hw).symm
    · rintro t _ ⟨-, -, -, _, hℓ, _⟩ v hv
      rw [ev_lv_w hℓ] at hv; exact (Option.some.inj hv).symm
    · rintro t _ ⟨-, hm, hbe, hl⟩
      refine ⟨rfl, ?_, hbe, hl⟩
      show upd t.memory _ _ = _
      rw [hm]; rfl
  · exact hoare_return fun t _ ⟨_, hm, hbe, _⟩ _ _ => fun _ _ => ⟨hm, hbe⟩

theorem tail_mid (U : PanSemStateFiniteExact 64 σ) (hmU : U.memory = m) (hbU : U.be = be0)
    (hTU : DLk U "t" T) (hℓU : DLk U "leaf" (dLeaf m T)) (hNU : DLk U "nodes" (hdr m T 40))
    (hpU : DLk U "pos" (dCnt m T)) (hcU : DLk U "count" (dCnt m T)) :
    Hoare σ X (fun t => t = U)
      (.seq (.ite (.cmp .notEqual (lv (nm "pos")) (lv (nm "count"))) delHole .skip)
        (.seq (.store (tAddr 24) (lv (nm "count")))
          (.seq (.ite (.cmp .equal (lv (nm "leaf")) (tLoad 56)) (.store (tAddr 56) (cw 0)) delSplice)
            (.seq (.store (nA "leaf" 0) (tLoad 72))
              (.seq (.store (tAddr 72) (lv (nm "leaf"))) (.return (cw 1)))))))
      (DelPostQ m be0 T) := by
  refine hoare_seq (R := fun r t => r = none ∧ t = U) (hoare_skipif ?_)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · intro t _ ht w hw
    subst ht
    rw [ev_cmp (ev_lv_w hpU) (ev_lv_w hcU)] at hw
    have := word_inj hw
    simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at this
    exact this.symm
  refine hoare_seq (R := TlR m be0 T (dM1 m T)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store_w (fun _ => T + BitVec.ofNat 64 24) (fun _ => dCnt m T) ?_ ?_ ?_
    · rintro t _ ⟨-, ht⟩ w hw
      subst ht
      rw [ev_tAddr hTU] at hw; exact (word_inj hw).symm
    · rintro t _ ⟨-, ht⟩ v hv
      subst ht
      rw [ev_lv_w hcU] at hv; exact (Option.some.inj hv).symm
    · rintro t _ ⟨-, ht⟩
      rw [ht]
      refine ⟨rfl, ?_, hbU, hTU, hℓU, hNU⟩
      show upd U.memory _ _ = _
      rw [hmU]; rfl
  refine hoare_seq (R := TlR m be0 T (dM2 m T)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr)
    (tail_end m be0 T)
  refine hoare_ite ?_ ?_
  · refine hoare_store_w (fun _ => T + BitVec.ofNat 64 56) (fun _ => 0) ?_ ?_ ?_
    · rintro t _ ⟨⟨-, -, -, hT, _⟩, -⟩ w hw
      rw [ev_tAddr hT] at hw; exact (word_inj hw).symm
    · rintro t _ _ v hv
      rw [ev_cw] at hv; exact (Option.some.inj hv).symm
    · rintro t _ ⟨⟨-, hm, hbe, hT, hℓ, hN⟩, w, hw, hw0⟩
      obtain ⟨a, b, ha, hb, -⟩ := cmp_true hw hw0
      have e := ev_tLoad_w hT hb
      rw [hm] at e
      have hb' : ev t (tLoad 56) = some (.val (.word (rd (dM1 m T) (T + BitVec.ofNat 64 56)))) := by
        rw [hb, e]
      have hA : dLeaf m T = rd (dM1 m T) (T + BitVec.ofNat 64 56) :=
        cmp_eq_true (ev_lv_w hℓ) hb' hw hw0
      refine ⟨rfl, ?_, hbe, hT, hℓ, hN⟩
      show upd t.memory _ _ = _
      rw [hm]; unfold dM2; rw [if_pos hA]; rfl
  · rintro t hs ⟨⟨-, hm, hbe, hT, hℓ, hN⟩, hw⟩ htr
    obtain ⟨a, b, ha, hb, -⟩ := cmp_false hw
    have e := ev_tLoad_w hT hb
    rw [hm] at e
    have hb' : ev t (tLoad 56) = some (.val (.word (rd (dM1 m T) (T + BitVec.ofNat 64 56)))) := by
      rw [hb, e]
    have hB : dLeaf m T ≠ rd (dM1 m T) (T + BitVec.ofNat 64 56) := cmp_eq_false (ev_lv_w hℓ) hb' hw
    have H := splice_hoare (σ := σ) (X := X) m be0 T t hs ⟨hm, hbe, hT, hℓ, hN⟩ htr
    obtain ⟨hr, hm', hbe', hT', hℓ', hN'⟩ := H
    refine ⟨hr, ?_, hbe', hT', hℓ', hN'⟩
    rw [hm']; unfold dM2; rw [if_neg hB]

theorem delTail_hoare (hR : RIGHT m T (dLeaf m T) = dCnt m T) :
    Hoare σ X (fun u => u.memory = m ∧ u.be = be0 ∧ DLk u "t" T ∧ DLk u "leaf" (dLeaf m T))
      delTail (DelPostQ m be0 T) := by
  refine hoare_dec fun u _ ⟨hm, hbe, hT, hℓ⟩ v1 hv1 _ => ?_
  have e := ev_tLoad_w hT hv1
  rw [hm] at e
  subst e
  refine hoare_dec fun u1 _ hu1 v2 hv2 _ => ?_
  have hu1' : u1 = setVarHOLFinite (nm "nodes") (.val (.word (rd m (T + BitVec.ofNat 64 40)))) u :=
    hu1
  subst hu1'
  have hN1 : DLk (setVarHOLFinite (nm "nodes") (.val (.word (rd m (T + BitVec.ofNat 64 40)))) u)
      "nodes" (hdr m T 40) := by lks
  have hℓ1 : DLk (setVarHOLFinite (nm "nodes") (.val (.word (rd m (T + BitVec.ofNat 64 40)))) u)
      "leaf" (dLeaf m T) := by lks
  have e := ev_nA_load hN1 hℓ1 hv2
  have hm1 : (setVarHOLFinite (nm "nodes") (.val (.word (rd m (T + BitVec.ofNat 64 40)))) u).memory
      = m := hm
  rw [hm1, show rd m (na (hdr m T 40) (dLeaf m T) 16) = dCnt m T from hR] at e
  subst e
  refine hoare_dec fun u2 _ hu2 v3 hv3 _ => ?_
  have hu2' : u2 = setVarHOLFinite (nm "pos") (.val (.word (dCnt m T)))
      (setVarHOLFinite (nm "nodes") (.val (.word (rd m (T + BitVec.ofNat 64 40)))) u) := hu2
  subst hu2'
  obtain ⟨x, y, hx, hy, hv3e⟩ := ev_sub2_inv hv3
  have hT2 : DLk (setVarHOLFinite (nm "pos") (.val (.word (dCnt m T)))
      (setVarHOLFinite (nm "nodes") (.val (.word (rd m (T + BitVec.ofNat 64 40)))) u)) "t" T := by lks
  have ex := ev_tLoad_w hT2 hx
  have hm2 : (setVarHOLFinite (nm "pos") (.val (.word (dCnt m T)))
      (setVarHOLFinite (nm "nodes") (.val (.word (rd m (T + BitVec.ofNat 64 40)))) u)).memory = m := hm
  rw [hm2] at ex
  have hx' : x = rd m (T + BitVec.ofNat 64 24) := by
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at ex; exact ex
  rw [ev_cw] at hy
  have hy' := word_inj hy
  subst hx' hy' hv3e
  exact hoare_post (tail_mid m be0 T _ hm hbe (by lks) (by lks) (by lks) (by lks) (by lks))
    fun _ _ _ _ h => h

end tail

/-! ## The whole body -/

section body
variable {L : BitVec 64 → Prop}

theorem funSpec_memeq_full (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memeq") (fun vs s r t => (∀ A N, vs = [A, A, N] →
      ∀ v, r = .returned v → v ≠ .val (.word 0)) ∧ t.memory = s.memory ∧ t.be = s.be) :=
  (funSpec_memeq_self hC).and ((funSpec_memeq_mw hC).and (funSpec_be _))

theorem funSpec_find_full (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_find_leaf") (fun vs s r t => (∀ T key,
      vs = [.val (.word T), .val (.word key)] →
      ∀ v, r = .returned (.val (.word v)) → Wk s T key (hdr s.memory T 56) v) ∧
        t.memory = s.memory ∧ t.be = s.be) :=
  (funSpec_find_leaf hC).and ((funSpec_find_leaf_mw hC).and (funSpec_be _))

/-- After `htab_find_leaf` returned the last leaf. -/
theorem delBody_after_find (hC : X.code.lookup = guestCode) (m : Mem) (be0 : Bool) (T : BitVec 64)
    (hR : RIGHT m T (dLeaf m T) = dCnt m T) (hℓ0 : dLeaf m T ≠ 0)
    (U : PanSemStateFiniteExact 64 σ) (hmU : U.memory = m) (hbU : U.be = be0)
    (hTU : DLk U "t" T) (hℓU : DLk U "leaf" (dLeaf m T)) (hkU : DLk U "key" (lastKey m T))
    (hklU : U.locals.lookup (nm "klen") = some (.val (m (T + BitVec.ofNat 64 0))))
    (hsU : U.locals.lookup (nm "stride") = some (.val (m (T + BitVec.ofNat 64 8)))) :
    Hoare σ X (fun t => t = U)
      (.seq (.ite (.cmp .equal (lv (nm "leaf")) (cw 0)) (.return (cw 0)) .skip)
        (.dec (nm "keys") .one (tLoad 32)
          (.decCall (nm "eq") .one (nm "memeq")
              [.op .add [lv (nm "keys"), .panop .mul [lv (nm "leaf"), lv (nm "stride")]],
               lv (nm "key"), lv (nm "klen")]
            (.seq (.ite (.cmp .equal (lv (nm "eq")) (cw 0)) (.return (cw 0)) .skip) delTail))))
      (DelPostQ m be0 T) := by
  refine hoare_seq (R := fun r t => r = none ∧ t = U) (hoare_skipif ?_)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · intro t _ ht w hw
    subst ht
    rw [ev_cmp (ev_lv_w hℓU) (ev_cw t 0)] at hw
    have := word_inj hw
    simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, beq_iff_eq] at this
    have h0' : ¬ (dLeaf m T = BitVec.ofNat 64 0) := hℓ0
    rw [if_neg h0'] at this
    exact this.symm
  refine hoare_pre (P := fun t => t = U) ?_ (fun _ _ h => h.2)
  refine hoare_dec fun u _ hu vk hvk _ => ?_
  have hu' : u = U := hu
  subst hu'
  have e := ev_tLoad_w hTU hvk
  rw [hmU] at e
  subst e
  refine hoare_decCallS (funSpec_memeq_full hC) fun s4 _ hs4 vs hvs callee v st hRm _ hshp => ?_
  have hs4' : s4 = setVarHOLFinite (nm "keys") (.val (.word (rd m (T + BitVec.ofNat 64 32)))) u := hs4
  subst hs4'
  obtain ⟨hne, hmst, hbst⟩ := hRm
  -- the arguments: the key slot of the last leaf, twice
  obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
  have hr3' : r3 = [] := by
    have h0 : evs (setVarHOLFinite (nm "keys") (.val (.word (rd m (T + BitVec.ofNat 64 32)))) u)
        ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at hr3; exact (Option.some.inj hr3).symm
  subst hr3'
  have hkeys : DLk (setVarHOLFinite (nm "keys") (.val (.word (rd m (T + BitVec.ofNat 64 32)))) u)
      "keys" (rd m (T + BitVec.ofNat 64 32)) := by lks
  have hleaf : DLk (setVarHOLFinite (nm "keys") (.val (.word (rd m (T + BitVec.ofNat 64 32)))) u)
      "leaf" (dLeaf m T) := by lks
  have hstr : DLk (setVarHOLFinite (nm "keys") (.val (.word (rd m (T + BitVec.ofNat 64 32)))) u)
      "stride" (rd m (T + BitVec.ofNat 64 8)) := by
    unfold DLk; rw [lk_set_ne _ _ (by decide), hsU, mem_word m]
  have hkey : DLk (setVarHOLFinite (nm "keys") (.val (.word (rd m (T + BitVec.ofNat 64 32)))) u)
      "key" (lastKey m T) := by lks
  rw [ev_add2 (ev_lv_w hkeys) (ev_mul2 (ev_lv_w hleaf) (ev_lv_w hstr))] at ha1
  rw [ev_lv_w hkey] at ha2
  have hA : a1 = a2 := by
    rw [← Option.some.inj ha1, ← Option.some.inj ha2]
    rfl
  subst hA
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hshp
  have hw0 : w ≠ 0 := by
    intro h; subst h
    exact hne a1 a3 rfl _ rfl rfl
  -- after the call
  refine hoare_seq (R := fun r t => r = none ∧ t = setVarHOLFinite (nm "eq") (.val (.word w))
      { st with locals := (setVarHOLFinite (nm "keys")
        (.val (.word (rd m (T + BitVec.ofNat 64 32)))) u).locals }) (hoare_skipif ?_)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · intro t _ ht w' hw'
    subst ht
    have heq : DLk (setVarHOLFinite (nm "eq") (.val (.word w))
        { st with locals := (setVarHOLFinite (nm "keys")
          (.val (.word (rd m (T + BitVec.ofNat 64 32)))) u).locals }) "eq" w := by lks
    rw [ev_cmp (ev_lv_w heq) (ev_cw _ 0)] at hw'
    have := word_inj hw'
    simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, beq_iff_eq] at this
    have h0' : ¬ (w = BitVec.ofNat 64 0) := hw0
    rw [if_neg h0'] at this
    exact this.symm
  refine hoare_pre (delTail_hoare m be0 T hR) ?_
  rintro t _ ⟨-, rfl⟩
  refine ⟨?_, ?_, by lks, by lks⟩
  · show st.memory = m
    rw [hmst]; exact hmU
  · show st.be = be0
    rw [hbst]; exact hbU

/-- **`htab_del` on the last key.** -/
theorem delBody_hoare (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ)
    (T : BitVec 64) (hT0 : DLk s0 "t" T) (hk0 : DLk s0 "key" (lastKey s0.memory T))
    (hsh : Shape s0.memory s0.memaddrs s0.be T L) (hc : 0 < CNT s0.memory T) :
    Hoare σ X (fun u => u = s0) delBody (DelPostQ s0.memory s0.be T) := by
  obtain ⟨lℓ, -, hR, -⟩ := last_leaf hsh hc
  have hℓ0 : dLeaf s0.memory T ≠ 0 := live_ne0 hsh lℓ
  refine hoare_dec fun u _ hu v1 hv1 _ => ?_
  have hu' : u = s0 := hu
  subst hu'
  have e1 := ev_tLoad_inv hT0 hv1
  subst e1
  refine hoare_dec fun u1 _ hu1 v2 hv2 _ => ?_
  have hu1' : u1 = setVarHOLFinite (nm "klen") (.val (u.memory (T + BitVec.ofNat 64 0))) u := hu1
  subst hu1'
  have hT1 : DLk (setVarHOLFinite (nm "klen") (.val (u.memory (T + BitVec.ofNat 64 0))) u) "t" T :=
    by lks
  have e2 := ev_tLoad_inv hT1 hv2
  subst e2
  refine hoare_decCallS (funSpec_find_full hC) fun s2 _ hs2 vs hvs callee v st hRf _ hshp => ?_
  have hs2' : s2 = setVarHOLFinite (nm "stride") (.val (u.memory (T + BitVec.ofNat 64 8)))
      (setVarHOLFinite (nm "klen") (.val (u.memory (T + BitVec.ofNat 64 0))) u) := hs2
  subst hs2'
  obtain ⟨hfind, hmst, hbst⟩ := hRf
  obtain ⟨va, vb, rfl, hva, hvb⟩ := evs_two_inv hvs
  have hT2 : DLk (setVarHOLFinite (nm "stride") (.val (u.memory (T + BitVec.ofNat 64 8)))
      (setVarHOLFinite (nm "klen") (.val (u.memory (T + BitVec.ofNat 64 0))) u)) "t" T := by lks
  have hk2 : DLk (setVarHOLFinite (nm "stride") (.val (u.memory (T + BitVec.ofNat 64 8)))
      (setVarHOLFinite (nm "klen") (.val (u.memory (T + BitVec.ofNat 64 0))) u)) "key"
      (lastKey u.memory T) := by lks
  rw [ev_lv_w hT2] at hva
  rw [ev_lv_w hk2] at hvb
  have hva' := (Option.some.inj hva).symm
  have hvb' := (Option.some.inj hvb).symm
  subst hva' hvb'
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hshp
  have hwℓ : w = dLeaf u.memory T := find_last hsh hc (hfind T _ rfl w rfl)
  subst hwℓ
  refine hoare_post (delBody_after_find hC u.memory u.be T hR hℓ0 _ (by rw [hmst]; rfl)
    (by rw [hbst]; rfl) (by lks) (by lks) (by lks) (by lks) (by lks)) fun _ _ _ _ h => h

end body

/-! ## `DelSpec` -/

/-- **`htab_del` on the last key, with the modifies clause.** -/
theorem delSpecM (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_del") (fun vs s r u => ∀ T, TableWF s T → 0 < cntOf s.memory T →
      vs = [.val (.word T), .val (.word (lastKey s.memory T))] → ∀ v, r = .returned v →
      TableWF u T ∧ cntOf u.memory T + 1 = cntOf s.memory T ∧
      u.memory (T + BitVec.ofNat 64 8) = s.memory (T + BitVec.ofNat 64 8) ∧
      ModifiesOnly (TableRegion s.memory T) s.memory u.memory ∧
      TableRegion u.memory T = TableRegion s.memory T ∧
      (∀ w, LeafVal u.memory T w → LeafVal s.memory T w)) := by
  intro vs body callee rs hl s hs hloc r hr T hwf hc hvs v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, hAB, -, -, hA, hB⟩ := lookupCode_two code_htab_del (by decide) hl
  rw [hvs] at hAB
  simp only [List.cons.injEq, and_true] at hAB
  obtain ⟨rfl, rfl⟩ := hAB
  obtain ⟨hsep, L, hsh, hex⟩ := hwf
  have hT0 : DLk s "t" T := by unfold DLk; rw [hloc]; exact hA
  have hk0 : DLk s "key" (lastKey s.memory T) := by unfold DLk; rw [hloc]; exact hB
  have H := delBody_hoare hC s T hT0 hk0 hsh hc s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  obtain ⟨hm, hbe⟩ := H _ rfl
  obtain ⟨sep', ⟨L', sh', ex'⟩, hcnt, h8, hmod, hreg, hval⟩ := del_wf2 hsep hsh hex hc
  have hd : (evaluateHOLFiniteState s delBody).2.memaddrs = s.memaddrs := memaddrs_preserved s _
  refine ⟨⟨by rw [hm]; exact sep', L', by rw [hm, hd, hbe]; exact ⟨sh', ex'⟩⟩, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hm]; exact hcnt
  · rw [hm]; exact h8
  · rw [hm]; exact hmod
  · rw [hm]; exact hreg
  · rw [hm]; exact hval

/-- **`DelSpec σ X TableWF`**: the obligation of `htab_truncate_costP` is discharged. -/
theorem delSpec_tableWF (hC : X.code.lookup = guestCode) : DelSpec σ X TableWF := by
  intro vs body callee rs hl s hs hloc r hr T hwf hc hvs v hv
  obtain ⟨h1, h2, h3, -⟩ := delSpecM hC vs body callee rs hl s hs hloc r hr T hwf hc hvs v hv
  exact ⟨h1, h2, h3⟩

/-! ## `htab_truncate` on well-formed tables -/

/-- A well-formed table holds fewer than `2 ^ 59` entries (count ≤ capacity, and the node array
of `32 (capacity + 1)` bytes fits below `2 ^ 64`). -/
theorem cnt_le_of_wf {s : PanSemStateFiniteExact 64 σ} {T : BitVec 64} (h : TableWF s T) :
    cntOf s.memory T ≤ 2 ^ 59 - 1 := by
  obtain ⟨hsep, L, hsh, -⟩ := h
  have hl := lay_of_sep hsep
  have h1 := hsh.cnt_le
  have h2 := hl.hN
  show CNT s.memory T ≤ _
  omega

/-- **Conditional cost of `htab_truncate`, discharged**: on a well-formed table it costs at most
`2 ^ 59 * (Bdel + 2)` ticks, where `Bdel` is the analyzer's all-states bound of `htab_del`. -/
theorem htab_truncate_costP_wf (hC : X.code.lookup = guestCode) {Bdel : Nat}
    (hdelc : CalleeCost σ X (nm "htab_del") Bdel) :
    CalleeCostP σ X (nm "htab_truncate")
      (fun vs s => ∃ T n, vs = [.val (.word T), .val (.word n)] ∧ TableWF s T)
      (2 ^ 59 * (Bdel + 2)) := by
  have := htab_truncate_costP_bound hC hdelc tableWF_memOnly (delSpec_tableWF hC)
    (fun s T h => cnt_le_of_wf h)
  exact this.mono (by rw [show 2 ^ 59 - 1 + 1 = 2 ^ 59 from rfl])

end InitECandidate.Solver.Spec.Inv
