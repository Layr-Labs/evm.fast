import InitECandidate.Solver.Spec.Inv.HtabDelGen
import InitECandidate.Solver.Spec.Inv.HtabTree

/-!
# `htab_del` on an arbitrary key: the Hoare proof

`delBodyG_hoare`: `htab_del(T, key)` returns either without writing (the walk ends at `0`, or
`memeq` says the leaf's key differs) or with the memory `gDel (holeMem m T ℓ) T ℓ (count - 1)
nodes` of `HtabDelGen.lean`, where `ℓ ≠ 0` is the end of the walk of `key` from the root (so a
live leaf of a well-formed table). Nothing about the key's bytes is needed: the found leaf is
deleted whatever `memeq` compared.

**`delSpecGen`**: the returns-only spec on a well-formed table.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem cmpNe_true {u : PanSemStateFiniteExact 64 σ} {a b : ExpHOL 64} {x y w : BitVec 64}
    (ha : ev u a = some (.val (.word x))) (hb : ev u b = some (.val (.word y)))
    (h : ev u (.cmp .notEqual a b) = some (.val (.word w))) (hw : w ≠ 0) : x ≠ y := by
  obtain ⟨x', y', ha', hb', hc⟩ := cmp_true h hw
  rw [ha] at ha'; rw [hb] at hb'
  cases ha'; cases hb'
  simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hc

theorem cmpNe_false {u : PanSemStateFiniteExact 64 σ} {a b : ExpHOL 64} {x y : BitVec 64}
    (ha : ev u a = some (.val (.word x))) (hb : ev u b = some (.val (.word y)))
    (h : ev u (.cmp .notEqual a b) = some (.val (.word 0))) : x = y := by
  obtain ⟨x', y', ha', hb', hc⟩ := cmp_false h
  rw [ha] at ha'; rw [hb] at hb'
  cases ha'; cases hb'
  simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hc

section splice
variable (M : Mem) (be0 : Bool) (T ℓ c N : BitVec 64)

def SpliceGP (u : PanSemStateFiniteExact 64 σ) : Prop :=
  u.memory = gM1 M T c ∧ u.be = be0 ∧ DLk u "t" T ∧ DLk u "leaf" (ℓ) ∧
    DLk u "nodes" (N)

def SpliceGQ (r : Option (PanSemResultExact 64)) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  r = none ∧ u.memory = gM2B M T ℓ c N ∧ u.be = be0 ∧ DLk u "t" T ∧ DLk u "leaf" (ℓ) ∧
    DLk u "nodes" (N)

/-- The lookups the splice keeps. -/
def SpLkG (u : PanSemStateFiniteExact 64 σ) : Prop :=
  DLk u "t" T ∧ DLk u "leaf" (ℓ) ∧ DLk u "nodes" (N) ∧ DLk u "p" (gP M T ℓ c N) ∧
    DLk u "g" (gG M T ℓ c N) ∧ DLk u "s" (gS M T ℓ c N)

def SpRG (MM : Mem) (r : Option (PanSemResultExact 64)) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  r = none ∧ u.memory = MM ∧ u.be = be0 ∧ SpLkG M T ℓ c N u

theorem spliceG_tail :
    Hoare σ X (SpRG M be0 T ℓ c N (gM1 M T c) none)
      (.seq (.store (nA "s" 0) (lv (nm "g")))
        (.seq (.ite (.cmp .equal (lv (nm "g")) (cw 0))
                (.store (tAddr 56) (lv (nm "s")))
                (.ite (.cmp .equal (.load .one (nA "g" 8)) (lv (nm "p")))
                  (.store (nA "g" 8) (lv (nm "s")))
                  (.store (nA "g" 16) (lv (nm "s")))))
          (.seq (.store (nA "p" 0) (tLoad 72))
            (.store (tAddr 72) (lv (nm "p"))))))
      (SpRG M be0 T ℓ c N (gM2B M T ℓ c N)) := by
  refine hoare_seq (R := SpRG M be0 T ℓ c N (gMa M T ℓ c N)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store_w (fun _ => na (N) (gS M T ℓ c N) 0) (fun _ => gG M T ℓ c N) ?_ ?_ ?_
    · rintro t _ ⟨-, -, -, _, _, hN, _, _, hs⟩ w hw
      rw [ev_nA hN hs] at hw; exact (word_inj hw).symm
    · rintro t _ ⟨-, -, -, _, _, _, _, hg, _⟩ v hv
      rw [ev_lv_w hg] at hv; exact (Option.some.inj hv).symm
    · rintro t _ ⟨-, hm, hbe, hl⟩
      refine ⟨rfl, ?_, hbe, hl⟩
      show upd t.memory _ _ = _
      rw [hm]; rfl
  refine hoare_seq (R := SpRG M be0 T ℓ c N (gMb M T ℓ c N)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_store_w (fun _ => T + BitVec.ofNat 64 56) (fun _ => gS M T ℓ c N) ?_ ?_ ?_
      · rintro t _ ⟨⟨-, -, -, hT, -⟩, -⟩ w hw
        rw [ev_tAddr hT] at hw; exact (word_inj hw).symm
      · rintro t _ ⟨⟨-, -, -, _, _, _, _, _, hs⟩, -⟩ v hv
        rw [ev_lv_w hs] at hv; exact (Option.some.inj hv).symm
      · rintro t _ ⟨⟨-, hm, hbe, hl⟩, w, hw, hw0⟩
        have hg0 : gG M T ℓ c N = 0 := cmp_eq_true (ev_lv_w hl.2.2.2.2.1) (ev_cw t 0) hw hw0
        refine ⟨rfl, ?_, hbe, hl⟩
        show upd t.memory _ _ = _
        rw [hm]; unfold gMb; rw [if_pos hg0]
    · refine hoare_ite ?_ ?_
      · refine hoare_store_w (fun _ => na (N) (gG M T ℓ c N) 8) (fun _ => gS M T ℓ c N) ?_ ?_ ?_
        · rintro t _ ⟨⟨⟨-, -, -, _, _, hN, _, hg, _⟩, -⟩, -⟩ w hw
          rw [ev_nA hN hg] at hw; exact (word_inj hw).symm
        · rintro t _ ⟨⟨⟨-, -, -, _, _, _, _, _, hs⟩, -⟩, -⟩ v hv
          rw [ev_lv_w hs] at hv; exact (Option.some.inj hv).symm
        · rintro t _ ⟨⟨⟨-, hm, hbe, hl⟩, hc0⟩, w, hw, hw0⟩
          have hg0 : gG M T ℓ c N ≠ 0 := cmp_eq_false (ev_lv_w hl.2.2.2.2.1) (ev_cw t 0) hc0
          obtain ⟨v8, hv8⟩ : ∃ v8, ev t (.load .one (nA "g" 8)) = some v8 := by
            obtain ⟨x, y, hx, -, -⟩ := cmp_true hw hw0
            exact ⟨_, hx⟩
          have e := ev_nA_load hl.2.2.1 hl.2.2.2.2.1 hv8
          rw [hm] at e
          subst e
          have hgp : rd (gMa M T ℓ c N) (na (N) (gG M T ℓ c N) 8) = gP M T ℓ c N :=
            cmp_eq_true hv8 (ev_lv_w hl.2.2.2.1) hw hw0
          refine ⟨rfl, ?_, hbe, hl⟩
          show upd t.memory _ _ = _
          rw [hm]; unfold gMb; rw [if_neg hg0, if_pos hgp]
      · refine hoare_store_w (fun _ => na (N) (gG M T ℓ c N) 16) (fun _ => gS M T ℓ c N) ?_ ?_ ?_
        · rintro t _ ⟨⟨⟨-, -, -, _, _, hN, _, hg, _⟩, -⟩, -⟩ w hw
          rw [ev_nA hN hg] at hw; exact (word_inj hw).symm
        · rintro t _ ⟨⟨⟨-, -, -, _, _, _, _, _, hs⟩, -⟩, -⟩ v hv
          rw [ev_lv_w hs] at hv; exact (Option.some.inj hv).symm
        · rintro t _ ⟨⟨⟨-, hm, hbe, hl⟩, hc0⟩, hw⟩
          have hg0 : gG M T ℓ c N ≠ 0 := cmp_eq_false (ev_lv_w hl.2.2.2.2.1) (ev_cw t 0) hc0
          obtain ⟨v8, hv8⟩ : ∃ v8, ev t (.load .one (nA "g" 8)) = some v8 := by
            obtain ⟨x, y, hx, -, -⟩ := cmp_false hw
            exact ⟨_, hx⟩
          have e := ev_nA_load hl.2.2.1 hl.2.2.2.2.1 hv8
          rw [hm] at e
          subst e
          have hgp : rd (gMa M T ℓ c N) (na (N) (gG M T ℓ c N) 8) ≠ gP M T ℓ c N :=
            cmp_eq_false hv8 (ev_lv_w hl.2.2.2.1) hw
          refine ⟨rfl, ?_, hbe, hl⟩
          show upd t.memory _ _ = _
          rw [hm]; unfold gMb; rw [if_neg hg0, if_neg hgp]
  refine hoare_seq (R := SpRG M be0 T ℓ c N (gMc M T ℓ c N)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store_w (fun _ => na (N) (gP M T ℓ c N) 0)
      (fun _ => rd (gMb M T ℓ c N) (T + BitVec.ofNat 64 72)) ?_ ?_ ?_
    · rintro t _ ⟨-, -, -, _, _, hN, hp, _⟩ w hw
      rw [ev_nA hN hp] at hw; exact (word_inj hw).symm
    · rintro t _ ⟨-, hm, -, hT, _⟩ v hv
      rw [ev_tLoad_w hT hv, hm]
    · rintro t _ ⟨-, hm, hbe, hl⟩
      refine ⟨rfl, ?_, hbe, hl⟩
      show upd t.memory _ _ = _
      rw [hm]; rfl
  · refine hoare_store_w (fun _ => T + BitVec.ofNat 64 72) (fun _ => gP M T ℓ c N) ?_ ?_ ?_
    · rintro t _ ⟨-, -, -, hT, _⟩ w hw
      rw [ev_tAddr hT] at hw; exact (word_inj hw).symm
    · rintro t _ ⟨-, -, -, _, _, _, hp, _⟩ v hv
      rw [ev_lv_w hp] at hv; exact (Option.some.inj hv).symm
    · rintro t _ ⟨-, hm, hbe, hl⟩
      refine ⟨rfl, ?_, hbe, hl⟩
      show upd t.memory _ _ = _
      rw [hm]; rfl

/-- The splice after its three declarations. -/
theorem spliceG_mid (U : PanSemStateFiniteExact 64 σ) (hmU : U.memory = gM1 M T c) (hbU : U.be = be0)
    (hTU : DLk U "t" T) (hℓU : DLk U "leaf" (ℓ)) (hNU : DLk U "nodes" (N))
    (hpU : DLk U "p" (gP M T ℓ c N)) (hgU : DLk U "g" (gG M T ℓ c N))
    (hsU : DLk U "s" (rd (gM1 M T c) (na (N) (gP M T ℓ c N) 8))) :
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
      (SpRG M be0 T ℓ c N (gM2B M T ℓ c N)) := by
  refine hoare_seq (R := SpRG M be0 T ℓ c N (gM1 M T c)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr)
    (spliceG_tail M be0 T ℓ c N)
  refine hoare_ite ?_ ?_
  · refine hoare_assign fun t _ ⟨ht, w, hw, hw0⟩ v hv _ => ?_
    subst ht
    have hs0 : rd (gM1 M T c) (na (N) (gP M T ℓ c N) 8) = ℓ :=
      cmp_eq_true (ev_lv_w hsU) (ev_lv_w hℓU) hw hw0
    have e := ev_nA_load hNU hpU hv
    rw [hmU] at e
    subst e
    refine ⟨rfl, hmU, hbU, by lks, by lks, by lks, by lks, by lks, ?_⟩
    unfold DLk
    rw [lk_set_self]
    unfold gS
    rw [if_pos hs0]
  · refine hoare_skip fun t _ ⟨ht, hw⟩ => ?_
    subst ht
    have hs0 : rd (gM1 M T c) (na (N) (gP M T ℓ c N) 8) ≠ ℓ :=
      cmp_eq_false (ev_lv_w hsU) (ev_lv_w hℓU) hw
    refine ⟨rfl, hmU, hbU, hTU, hℓU, hNU, hpU, hgU, ?_⟩
    have : gS M T ℓ c N = rd (gM1 M T c) (na (N) (gP M T ℓ c N) 8) := by
      unfold gS; rw [if_neg hs0]
    rw [this]; exact hsU

theorem spliceG_hoare : Hoare σ X (SpliceGP M be0 T ℓ c N) delSplice (SpliceGQ M be0 T ℓ c N) := by
  refine hoare_dec fun u _ ⟨hm, hbe, hT, hℓ, hN⟩ vp hvp _ => ?_
  have e := ev_nA_load hN hℓ hvp
  rw [hm] at e
  subst e
  refine hoare_dec fun u1 _ hu1 vg hvg _ => ?_
  have hu1' : u1 = setVarHOLFinite (nm "p") (.val (.word (gP M T ℓ c N))) u := hu1
  subst hu1'
  have hp1 : DLk (setVarHOLFinite (nm "p") (.val (.word (gP M T ℓ c N))) u) "p" (gP M T ℓ c N) := by lks
  have hN1 : DLk (setVarHOLFinite (nm "p") (.val (.word (gP M T ℓ c N))) u) "nodes" (N) := by lks
  have e := ev_nA_load hN1 hp1 hvg
  have hm1 : (setVarHOLFinite (nm "p") (.val (.word (gP M T ℓ c N))) u).memory = gM1 M T c := hm
  rw [hm1] at e
  subst e
  refine hoare_dec fun u2 _ hu2 vs hvs _ => ?_
  have hu2' : u2 = setVarHOLFinite (nm "g") (.val (.word (gG M T ℓ c N)))
      (setVarHOLFinite (nm "p") (.val (.word (gP M T ℓ c N))) u) := hu2
  subst hu2'
  have hp2 : DLk (setVarHOLFinite (nm "g") (.val (.word (gG M T ℓ c N)))
      (setVarHOLFinite (nm "p") (.val (.word (gP M T ℓ c N))) u)) "p" (gP M T ℓ c N) := by lks
  have hN2 : DLk (setVarHOLFinite (nm "g") (.val (.word (gG M T ℓ c N)))
      (setVarHOLFinite (nm "p") (.val (.word (gP M T ℓ c N))) u)) "nodes" (N) := by lks
  have e := ev_nA_load hN2 hp2 hvs
  have hm2 : (setVarHOLFinite (nm "g") (.val (.word (gG M T ℓ c N)))
      (setVarHOLFinite (nm "p") (.val (.word (gP M T ℓ c N))) u)).memory = gM1 M T c := hm
  rw [hm2] at e
  subst e
  exact hoare_post (spliceG_mid M be0 T ℓ c N _ hm (by exact hbe) (by lks) (by lks) (by lks) (by lks)
    (by lks) (by lks)) fun r t _ _ ⟨hr, hm', hbe', hT', hℓ', hN', _⟩ =>
      ⟨hr, hm', hbe', by lks, by lks, by lks⟩

end splice

/-! ## The tail -/

section tail
variable (M : Mem) (be0 : Bool) (T ℓ c N : BitVec 64)

def DelPostGQ (r : Option (PanSemResultExact 64)) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  ∀ v, r = some (.returned v) → u.memory = gDel M T ℓ c N ∧ u.be = be0

def TlRG (MM : Mem) (r : Option (PanSemResultExact 64)) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  r = none ∧ u.memory = MM ∧ u.be = be0 ∧ DLk u "t" T ∧ DLk u "leaf" (ℓ) ∧
    DLk u "nodes" (N)

theorem tailG_end :
    Hoare σ X (TlRG be0 T ℓ N (gM2 M T ℓ c N) none)
      (.seq (.store (nA "leaf" 0) (tLoad 72))
        (.seq (.store (tAddr 72) (lv (nm "leaf"))) (.return (cw 1))))
      (DelPostGQ M be0 T ℓ c N) := by
  refine hoare_seq (R := TlRG be0 T ℓ N (gM3 M T ℓ c N)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store_w (fun _ => na (N) (ℓ) 0)
      (fun _ => rd (gM2 M T ℓ c N) (T + BitVec.ofNat 64 72)) ?_ ?_ ?_
    · rintro t _ ⟨-, -, -, _, hℓ, hN⟩ w hw
      rw [ev_nA hN hℓ] at hw; exact (word_inj hw).symm
    · rintro t _ ⟨-, hm, -, hT, _⟩ v hv
      rw [ev_tLoad_w hT hv, hm]
    · rintro t _ ⟨-, hm, hbe, hl⟩
      refine ⟨rfl, ?_, hbe, hl⟩
      show upd t.memory _ _ = _
      rw [hm]; rfl
  refine hoare_seq (R := TlRG be0 T ℓ N (gDel M T ℓ c N)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store_w (fun _ => T + BitVec.ofNat 64 72) (fun _ => ℓ) ?_ ?_ ?_
    · rintro t _ ⟨-, -, -, hT, _⟩ w hw
      rw [ev_tAddr hT] at hw; exact (word_inj hw).symm
    · rintro t _ ⟨-, -, -, _, hℓ, _⟩ v hv
      rw [ev_lv_w hℓ] at hv; exact (Option.some.inj hv).symm
    · rintro t _ ⟨-, hm, hbe, hl⟩
      refine ⟨rfl, ?_, hbe, hl⟩
      show upd t.memory _ _ = _
      rw [hm]; rfl
  · exact hoare_return fun t _ ⟨_, hm, hbe, _⟩ _ _ => fun _ _ => ⟨hm, hbe⟩

end tail

/-! ## The hole move -/

theorem hole_hoare (m : Mem) (T ℓ : BitVec 64) (t0 : PanSemStateFiniteExact 64 σ) (hm0 : t0.memory = m)
    (hT : DLk t0 "t" T) (hN : DLk t0 "nodes" (hdr m T 40)) (hp : DLk t0 "pos" (RIGHT m T ℓ))
    (hc : DLk t0 "count" (dCnt m T)) (hne : RIGHT m T ℓ ≠ dCnt m T) :
    Hoare σ X (fun t => t = t0) delHole (fun r t => r = none ∧ t.memory = holeMem m T ℓ ∧
      t.be = t0.be ∧ ∀ x, x ≠ nm "order" → x ≠ nm "moved" → t.locals.lookup x = t0.locals.lookup x) := by
  refine hoare_dec fun u1 _ hu1 vo hvo _ => ?_
  have hu1' : u1 = t0 := hu1
  subst hu1'
  have eo := ev_tLoad_w hT hvo
  rw [hm0] at eo
  subst eo
  refine hoare_dec fun u2 _ hu2 vm hvm _ => ?_
  have hu2' : u2 = setVarHOLFinite (nm "order") (.val (.word (rd m (T + BitVec.ofNat 64 48)))) u1 :=
    hu2
  subst hu2'
  have hO1 : DLk (setVarHOLFinite (nm "order") (.val (.word (rd m (T + BitVec.ofNat 64 48)))) u1)
      "order" (rd m (T + BitVec.ofNat 64 48)) := lk_set_self _ _ _
  have hc1 : DLk (setVarHOLFinite (nm "order") (.val (.word (rd m (T + BitVec.ofNat 64 48)))) u1)
      "count" (dCnt m T) := by unfold DLk; rw [lk_set_ne _ _ (by decide)]; exact hc
  obtain ⟨wa, hwa, -, rfl⟩ := ev_load_one hvm
  rw [ev_add2 (ev_lv_w hO1) (ev_mul2 (ev_lv_w hc1) (ev_cw _ 8))] at hwa
  cases hwa
  have hmv : (setVarHOLFinite (nm "order") (.val (.word (rd m (T + BitVec.ofNat 64 48)))) u1).memory
      (rd m (T + BitVec.ofNat 64 48) + dCnt m T * BitVec.ofNat 64 8) = .word (ORD m T (dCnt m T)) := by
    show u1.memory _ = _
    rw [hm0]; exact mem_word m _
  rw [hmv]
  have L1 : ∀ x, x ≠ nm "order" → x ≠ nm "moved" →
      (setVarHOLFinite (nm "moved") (.val (.word (ORD m T (dCnt m T))))
        (setVarHOLFinite (nm "order") (.val (.word (rd m (T + BitVec.ofNat 64 48)))) u1)).locals.lookup x =
        u1.locals.lookup x := fun x h1 h2 => by
    rw [lk_set_ne _ _ (Ne.symm h2), lk_set_ne _ _ (Ne.symm h1)]
  have DO : DLk (setVarHOLFinite (nm "moved") (.val (.word (ORD m T (dCnt m T))))
      (setVarHOLFinite (nm "order") (.val (.word (rd m (T + BitVec.ofNat 64 48)))) u1)) "order"
      (hdr m T 48) := by
    unfold DLk; rw [lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
  have DM : DLk (setVarHOLFinite (nm "moved") (.val (.word (ORD m T (dCnt m T))))
      (setVarHOLFinite (nm "order") (.val (.word (rd m (T + BitVec.ofNat 64 48)))) u1)) "moved"
      (ORD m T (dCnt m T)) := lk_set_self _ _ _
  have DP : DLk (setVarHOLFinite (nm "moved") (.val (.word (ORD m T (dCnt m T))))
      (setVarHOLFinite (nm "order") (.val (.word (rd m (T + BitVec.ofNat 64 48)))) u1)) "pos"
      (RIGHT m T ℓ) := by
    unfold DLk; rw [L1 _ (by decide) (by decide)]; exact hp
  have DN : DLk (setVarHOLFinite (nm "moved") (.val (.word (ORD m T (dCnt m T))))
      (setVarHOLFinite (nm "order") (.val (.word (rd m (T + BitVec.ofNat 64 48)))) u1)) "nodes"
      (hdr m T 40) := by
    unfold DLk; rw [L1 _ (by decide) (by decide)]; exact hN
  have MM : (setVarHOLFinite (nm "moved") (.val (.word (ORD m T (dCnt m T))))
      (setVarHOLFinite (nm "order") (.val (.word (rd m (T + BitVec.ofNat 64 48)))) u1)).memory = m := hm0
  have BB : (setVarHOLFinite (nm "moved") (.val (.word (ORD m T (dCnt m T))))
      (setVarHOLFinite (nm "order") (.val (.word (rd m (T + BitVec.ofNat 64 48)))) u1)).be = u1.be := rfl
  generalize hU2 : setVarHOLFinite (nm "moved") (.val (.word (ORD m T (dCnt m T))))
      (setVarHOLFinite (nm "order") (.val (.word (rd m (T + BitVec.ofNat 64 48)))) u1) = U2
    at L1 DO DM DP DN MM BB ⊢
  refine hoare_seq (R := fun r t => r = none ∧
      t = { U2 with memory := upd m (oA m T (RIGHT m T ℓ)) (ORD m T (dCnt m T)) }) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store_w (fun _ => oA m T (RIGHT m T ℓ)) (fun _ => ORD m T (dCnt m T)) ?_ ?_ ?_
    · rintro t _ rfl w hw
      rw [ev_add2 (ev_lv_w DO) (ev_mul2 (ev_lv_w DP) (ev_cw _ 8))] at hw
      exact (word_inj hw).symm
    · rintro t _ rfl v hv
      rw [ev_lv_w DM] at hv; exact (Option.some.inj hv).symm
    · rintro t _ rfl
      exact ⟨rfl, by rw [MM]⟩
  · refine hoare_store_w (fun _ => na (hdr m T 40) (ORD m T (dCnt m T)) 16) (fun _ => RIGHT m T ℓ)
      ?_ ?_ ?_
    · rintro t _ ⟨-, rfl⟩ w hw
      rw [ev_nA (u := { U2 with memory := upd m (oA m T (RIGHT m T ℓ)) (ORD m T (dCnt m T)) })
        DN DM] at hw
      exact (word_inj hw).symm
    · rintro t _ ⟨-, rfl⟩ v hv
      rw [ev_lv_w (u := { U2 with memory := upd m (oA m T (RIGHT m T ℓ)) (ORD m T (dCnt m T)) })
        DP] at hv
      exact (Option.some.inj hv).symm
    · rintro t _ ⟨-, rfl⟩
      refine ⟨rfl, ?_, BB, fun x h1 h2 => ?_⟩
      · show upd (upd m _ _) _ _ = holeMem m T ℓ
        unfold holeMem; rw [if_pos hne]
      · dsimp only
        rw [lookup_restore (Ne.symm h1), lookup_restore (Ne.symm h2)]
        exact L1 x h1 h2

/-! ## The tail with the hole move -/

theorem tailG_mid (m : Mem) (be0 : Bool) (T ℓ : BitVec 64) (U : PanSemStateFiniteExact 64 σ)
    (hmU : U.memory = m) (hbU : U.be = be0)
    (hTU : DLk U "t" T) (hℓU : DLk U "leaf" ℓ) (hNU : DLk U "nodes" (hdr m T 40))
    (hpU : DLk U "pos" (RIGHT m T ℓ)) (hcU : DLk U "count" (dCnt m T)) :
    Hoare σ X (fun t => t = U)
      (.seq (.ite (.cmp .notEqual (lv (nm "pos")) (lv (nm "count"))) delHole .skip)
        (.seq (.store (tAddr 24) (lv (nm "count")))
          (.seq (.ite (.cmp .equal (lv (nm "leaf")) (tLoad 56)) (.store (tAddr 56) (cw 0)) delSplice)
            (.seq (.store (nA "leaf" 0) (tLoad 72))
              (.seq (.store (tAddr 72) (lv (nm "leaf"))) (.return (cw 1)))))))
      (DelPostGQ (holeMem m T ℓ) be0 T ℓ (dCnt m T) (hdr m T 40)) := by
  refine hoare_seq (R := fun r t => r = none ∧ t.memory = holeMem m T ℓ ∧ t.be = be0 ∧
      DLk t "t" T ∧ DLk t "leaf" ℓ ∧ DLk t "nodes" (hdr m T 40) ∧ DLk t "count" (dCnt m T))
    ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · intro s hs ⟨hsU, w, hw, hw0⟩
      rw [hsU] at hw
      have hne := cmpNe_true (ev_lv_w hpU) (ev_lv_w hcU) hw hw0
      have H : Hoare σ X (fun t => t = U) delHole (fun r t => r = none ∧ t.memory = holeMem m T ℓ ∧
          t.be = be0 ∧ DLk t "t" T ∧ DLk t "leaf" ℓ ∧ DLk t "nodes" (hdr m T 40) ∧
          DLk t "count" (dCnt m T)) := by
        refine hoare_post (hole_hoare m T ℓ U hmU hTU hNU hpU hcU hne) ?_
        rintro r t _ _ ⟨hr, hm, hbe, hl⟩
        refine ⟨hr, hm, hbe.trans hbU, ?_, ?_, ?_, ?_⟩ <;> unfold DLk <;>
          rw [hl _ (by decide) (by decide)]
        · exact hTU
        · exact hℓU
        · exact hNU
        · exact hcU
      exact H s hs hsU
    · refine hoare_skip fun t _ ⟨ht, hw⟩ => ?_
      rw [ht] at hw ⊢
      have heq : RIGHT m T ℓ = dCnt m T := cmpNe_false (ev_lv_w hpU) (ev_lv_w hcU) hw
      exact ⟨rfl, by rw [hmU]; unfold holeMem; rw [if_neg (not_not.mpr heq)], hbU, hTU, hℓU, hNU, hcU⟩
  refine hoare_seq (R := TlRG be0 T ℓ (hdr m T 40) (gM1 (holeMem m T ℓ) T (dCnt m T))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store_w (fun _ => T + BitVec.ofNat 64 24) (fun _ => dCnt m T) ?_ ?_ ?_
    · rintro t _ ⟨-, -, -, hT, -⟩ w hw
      rw [ev_tAddr hT] at hw; exact (word_inj hw).symm
    · rintro t _ ⟨-, -, -, -, -, -, hc⟩ v hv
      rw [ev_lv_w hc] at hv; exact (Option.some.inj hv).symm
    · rintro t _ ⟨-, hm, hbe, hT, hℓ, hN, -⟩
      refine ⟨rfl, ?_, hbe, hT, hℓ, hN⟩
      show upd t.memory _ _ = _
      rw [hm]; rfl
  refine hoare_seq (R := TlRG be0 T ℓ (hdr m T 40) (gM2 (holeMem m T ℓ) T ℓ (dCnt m T) (hdr m T 40))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) (tailG_end (holeMem m T ℓ) be0 T ℓ (dCnt m T) (hdr m T 40))
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
      have hb' : ev t (tLoad 56) = some (.val (.word (rd (gM1 (holeMem m T ℓ) T (dCnt m T))
          (T + BitVec.ofNat 64 56)))) := by rw [hb, e]
      have hA : ℓ = rd (gM1 (holeMem m T ℓ) T (dCnt m T)) (T + BitVec.ofNat 64 56) :=
        cmp_eq_true (ev_lv_w hℓ) hb' hw hw0
      refine ⟨rfl, ?_, hbe, hT, hℓ, hN⟩
      show upd t.memory _ _ = _
      rw [hm]; unfold gM2; rw [if_pos hA]; rfl
  · rintro t hs ⟨⟨-, hm, hbe, hT, hℓ, hN⟩, hw⟩ htr
    obtain ⟨a, b, ha, hb, -⟩ := cmp_false hw
    have e := ev_tLoad_w hT hb
    rw [hm] at e
    have hb' : ev t (tLoad 56) = some (.val (.word (rd (gM1 (holeMem m T ℓ) T (dCnt m T))
        (T + BitVec.ofNat 64 56)))) := by rw [hb, e]
    have hB : ℓ ≠ rd (gM1 (holeMem m T ℓ) T (dCnt m T)) (T + BitVec.ofNat 64 56) :=
      cmp_eq_false (ev_lv_w hℓ) hb' hw
    have H := spliceG_hoare (σ := σ) (X := X) (holeMem m T ℓ) be0 T ℓ (dCnt m T) (hdr m T 40) t hs
      ⟨hm, hbe, hT, hℓ, hN⟩ htr
    obtain ⟨hr, hm', hbe', hT', hℓ', hN'⟩ := H
    refine ⟨hr, ?_, hbe', hT', hℓ', hN'⟩
    rw [hm']; unfold gM2; rw [if_neg hB]

theorem delTailG_hoare (m : Mem) (be0 : Bool) (T ℓ : BitVec 64) :
    Hoare σ X (fun u => u.memory = m ∧ u.be = be0 ∧ DLk u "t" T ∧ DLk u "leaf" ℓ)
      delTail (DelPostGQ (holeMem m T ℓ) be0 T ℓ (dCnt m T) (hdr m T 40)) := by
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
      "leaf" ℓ := by lks
  have e := ev_nA_load hN1 hℓ1 hv2
  have hm1 : (setVarHOLFinite (nm "nodes") (.val (.word (rd m (T + BitVec.ofNat 64 40)))) u).memory
      = m := hm
  rw [hm1] at e
  subst e
  refine hoare_dec fun u2 _ hu2 v3 hv3 _ => ?_
  have hu2' : u2 = setVarHOLFinite (nm "pos") (.val (.word (RIGHT m T ℓ)))
      (setVarHOLFinite (nm "nodes") (.val (.word (rd m (T + BitVec.ofNat 64 40)))) u) := hu2
  subst hu2'
  obtain ⟨x, y, hx, hy, hv3e⟩ := ev_sub2_inv hv3
  have hT2 : DLk (setVarHOLFinite (nm "pos") (.val (.word (RIGHT m T ℓ)))
      (setVarHOLFinite (nm "nodes") (.val (.word (rd m (T + BitVec.ofNat 64 40)))) u)) "t" T := by lks
  have ex := ev_tLoad_w hT2 hx
  have hm2 : (setVarHOLFinite (nm "pos") (.val (.word (RIGHT m T ℓ)))
      (setVarHOLFinite (nm "nodes") (.val (.word (rd m (T + BitVec.ofNat 64 40)))) u)).memory = m := hm
  rw [hm2] at ex
  have hx' : x = rd m (T + BitVec.ofNat 64 24) := by
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at ex; exact ex
  rw [ev_cw] at hy
  have hy' := word_inj hy
  subst hx' hy' hv3e
  exact hoare_post (tailG_mid m be0 T ℓ _ hm hbe (by lks) (by lks) (by lks) (by lks) (by lks))
    fun _ _ _ _ h => h

/-! ## The whole body -/

/-- The post of `htab_del`'s body from memory `m`: a return either wrote nothing, or deleted the
leaf `ℓ ≠ 0` at the end of the key's walk. -/
def DelGQ (m : Mem) (d : BitVec 64 → Prop) (be0 : Bool) (T key : BitVec 64)
    (r : Option (PanSemResultExact 64)) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  ∀ v, r = some (.returned v) → u.be = be0 ∧ (u.memory = m ∨ ∃ ℓ, ℓ ≠ 0 ∧
    WalkFrom m d be0 T key (hdr m T 56) ℓ ∧
      u.memory = gDel (holeMem m T ℓ) T ℓ (dCnt m T) (hdr m T 40))

theorem funSpec_memeq_mb (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memeq") (fun _ s _ t => t.memory = s.memory ∧ t.be = s.be) :=
  (funSpec_memeq_mw hC).and (funSpec_be _)

theorem delBodyG_after_find (hC : X.code.lookup = guestCode) (m : Mem) (d : BitVec 64 → Prop)
    (be0 : Bool) (T key w : BitVec 64) (hwk : WalkFrom m d be0 T key (hdr m T 56) w)
    (U : PanSemStateFiniteExact 64 σ) (hmU : U.memory = m) (hbU : U.be = be0)
    (hTU : DLk U "t" T) (hℓU : DLk U "leaf" w) (hkU : DLk U "key" key)
    (hklU : U.locals.lookup (nm "klen") = some (.val (m (T + BitVec.ofNat 64 0))))
    (hsU : U.locals.lookup (nm "stride") = some (.val (m (T + BitVec.ofNat 64 8)))) :
    Hoare σ X (fun t => t = U)
      (.seq (.ite (.cmp .equal (lv (nm "leaf")) (cw 0)) (.return (cw 0)) .skip)
        (.dec (nm "keys") .one (tLoad 32)
          (.decCall (nm "eq") .one (nm "memeq")
              [.op .add [lv (nm "keys"), .panop .mul [lv (nm "leaf"), lv (nm "stride")]],
               lv (nm "key"), lv (nm "klen")]
            (.seq (.ite (.cmp .equal (lv (nm "eq")) (cw 0)) (.return (cw 0)) .skip) delTail))))
      (DelGQ m d be0 T key) := by
  refine hoare_seq (R := fun r t => (r = none ∧ t = U ∧ w ≠ 0) ∨ (r ≠ none ∧ DelGQ m d be0 T key r t))
    ?_ (fun r t _ hr _ h => by rcases h with ⟨h, -⟩ | ⟨-, h⟩; exact absurd h hr; exact h) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_return fun t _ ⟨ht, _⟩ v _ => Or.inr ⟨by simp, fun _ _ => ?_⟩
      rw [ht]; exact ⟨hbU, Or.inl hmU⟩
    · refine hoare_skip fun t _ ⟨ht, hw⟩ => Or.inl ⟨rfl, ht, ?_⟩
      rw [ht] at hw
      exact cmp_eq_false (ev_lv_w hℓU) (ev_cw _ 0) hw
  refine hoare_pre (P := fun t => t = U ∧ w ≠ 0) ?_ (fun t _ h => by
    rcases h with ⟨-, h1, h2⟩ | ⟨h, -⟩
    · exact ⟨h1, h2⟩
    · exact absurd rfl h)
  refine hoare_dec fun u _ ⟨hu, hw0⟩ vk hvk _ => ?_
  have hu' : u = U := hu
  subst hu'
  have e := ev_tLoad_w hTU hvk
  rw [hmU] at e
  subst e
  refine hoare_decCallS (funSpec_memeq_mb hC) fun s4 _ hs4 vs hvs callee v st hRm _ hshp => ?_
  have hs4' : s4 = setVarHOLFinite (nm "keys") (.val (.word (rd m (T + BitVec.ofNat 64 32)))) u := hs4
  subst hs4'
  obtain ⟨hmst, hbst⟩ := hRm
  obtain ⟨w', rfl⟩ := val_of_shapeEq_one' hshp
  set U2 := setVarHOLFinite (nm "eq") (.val (.word w'))
    { st with locals := (setVarHOLFinite (nm "keys") (.val (.word (rd m (T + BitVec.ofNat 64 32)))) u).locals }
    with hU2
  have hm2 : U2.memory = m := by show st.memory = m; rw [hmst]; exact hmU
  have hb2 : U2.be = be0 := by show st.be = be0; rw [hbst]; exact hbU
  have hT2 : DLk U2 "t" T := by rw [hU2]; lks
  have hℓ2 : DLk U2 "leaf" w := by rw [hU2]; lks
  refine hoare_seq (R := fun r t => (r = none ∧ t = U2) ∨ (r ≠ none ∧ DelGQ m d be0 T key r t)) ?_
    (fun r t _ hr _ h => by rcases h with ⟨h, -⟩ | ⟨-, h⟩; exact absurd h hr; exact h) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_return fun t _ ⟨ht, _⟩ v _ => Or.inr ⟨by simp, fun _ _ => ?_⟩
      rw [ht]; exact ⟨hb2, Or.inl hm2⟩
    · exact hoare_skip fun t _ ⟨ht, _⟩ => Or.inl ⟨rfl, ht⟩
  refine hoare_pre (P := fun t => t = U2) ?_ (fun t _ h => by
    rcases h with ⟨-, h⟩ | ⟨h, -⟩
    · exact h
    · exact absurd rfl h)
  refine hoare_post (hoare_pre (delTailG_hoare m be0 T w) ?_) ?_
  · rintro t _ rfl; exact ⟨hm2, hb2, hT2, hℓ2⟩
  · exact fun r t _ _ h v hv => by
      obtain ⟨h1, h2⟩ := h v hv
      exact ⟨h2, Or.inr ⟨w, hw0, hwk, h1⟩⟩

/-- **`htab_del` on an arbitrary key** (the body). -/
theorem delBodyG_hoare (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ)
    (T key : BitVec 64) (hT0 : DLk s0 "t" T) (hk0 : DLk s0 "key" key) :
    Hoare σ X (fun u => u = s0) delBody (DelGQ s0.memory s0.memaddrs s0.be T key) := by
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
      (setVarHOLFinite (nm "klen") (.val (u.memory (T + BitVec.ofNat 64 0))) u)) "key" key := by lks
  rw [ev_lv_w hT2] at hva
  rw [ev_lv_w hk2] at hvb
  have hva' := (Option.some.inj hva).symm
  have hvb' := (Option.some.inj hvb).symm
  subst hva' hvb'
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hshp
  have hwk : WalkFrom u.memory u.memaddrs u.be T key (hdr u.memory T 56) w := hfind T _ rfl w rfl
  refine hoare_post (delBodyG_after_find hC u.memory u.memaddrs u.be T key w hwk _
    (by rw [hmst]; rfl) (by rw [hbst]; rfl) (by lks) (by lks) (by lks) (by lks) (by lks))
    fun _ _ _ _ h => h

/-! ## The spec -/

/-- **General-key `htab_del`** (returns only): on a well-formed table, every return leaves it well
formed, with the count not larger, the header kept except count/root/free list, writes only in
the table's region, keeps the region, and adds no leaf value. -/
theorem delSpecGen (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_del") (fun vs s r u => ∀ T key, vs = [.val (.word T), .val (.word key)] →
      TableWF s T → ∀ v, r = .returned v →
      TableWF u T ∧ CNT u.memory T ≤ CNT s.memory T ∧
      (∀ o, o < 88 → o ≠ 24 → o ≠ 56 → o ≠ 72 → hdr u.memory T o = hdr s.memory T o) ∧
      ModifiesOnly (TableRegion s.memory T) s.memory u.memory ∧
      TableRegion u.memory T = TableRegion s.memory T ∧
      (∀ w, LeafVal u.memory T w → LeafVal s.memory T w)) := by
  intro vs body callee rs hl s hs hloc r hr T key hvs hwf v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, hAB, -, -, hA, hB⟩ := lookupCode_two code_htab_del (by decide) hl
  rw [hvs] at hAB
  simp only [List.cons.injEq, and_true] at hAB
  obtain ⟨rfl, rfl⟩ := hAB
  have hT0 : DLk s "t" T := by unfold DLk; rw [hloc]; exact hA
  have hk0 : DLk s "key" key := by unfold DLk; rw [hloc]; exact hB
  have H := delBodyG_hoare hC s T key hT0 hk0 s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  obtain ⟨hbe, hmem⟩ := H _ rfl
  have hd : (evaluateHOLFiniteState s delBody).2.memaddrs = s.memaddrs := memaddrs_preserved s _
  rcases hmem with hm | ⟨ℓ, hℓ0, hwk, hm⟩
  · refine ⟨tableWF_memOnly s _ T hm hd hbe hwf, by rw [hm], fun o _ _ _ _ => by rw [hm],
      fun a _ => by rw [hm], by rw [hm], fun w h => by rw [hm] at h; exact h⟩
  · obtain ⟨hsep, L, hsh, hex⟩ := hwf
    have hr0 : hdr s.memory T 56 ≠ 0 := by
      intro h0
      rw [h0] at hwk
      cases hwk with
      | zero => exact hℓ0 rfl
      | leaf hn _ => exact hn rfl
      | left hn _ _ _ => exact hn rfl
      | right hn _ _ _ => exact hn rfl
    obtain ⟨-, lℓ, kℓ⟩ := walk_anc hsh hwk (hsh.root_live hr0).1
    obtain ⟨sep', ⟨L', sh', ex'⟩, hcnt, hhdr, hmod, hreg, hval⟩ := gdel_wf hsep hsh hex lℓ kℓ
    refine ⟨⟨by rw [hm]; exact sep', L', by rw [hm, hd, hbe]; exact ⟨sh', ex'⟩⟩, by rw [hm]; omega,
      fun o h1 h2 h3 h4 => by rw [hm]; exact hhdr o h1 h2 h3 h4, by rw [hm]; exact hmod,
      by rw [hm]; exact hreg, fun w h => hval w (by rw [hm] at h; exact h)⟩

end InitECandidate.Solver.Spec.Inv
