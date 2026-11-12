import InitECandidate.Solver.Spec.Inv.HtabSetCode
import InitECandidate.Solver.Spec.Inv.HtabSetPost
import InitECandidate.Solver.Spec.Inv.HtabGw

/-!
# `htab_set`: the Hoare proof

`setBody_hoare`: from an entry state satisfying `SetCtx` (well-formed table with free list `fl`,
allocator state, key outside the table and the free heap), every return of `htab_set`'s body
satisfies `SetPost`. The three branches (`setA_hoare`, `setB_hoare`, `setC_hoare`) produce the raw
memory descriptions that `Inv/HtabSetPost.lean` turns into `SetPostM`.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

section helpers
variable {σ : Type} {X : Ctx 64}

theorem funSpec_md (f : MlS) : FunSpec σ X f (fun _ s _ t => t.memaddrs = s.memaddrs) := by
  intro vs body callee rs hl s hs hloc r hr
  exact memaddrs_preserved s body

theorem evs_three_inv {s : PanSemStateFiniteExact 64 σ} {a b c : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs s [a, b, c] = some vs) :
    ∃ va vb vc, vs = [va, vb, vc] ∧ ev s a = some va ∧ ev s b = some vb ∧ ev s c = some vc := by
  obtain ⟨va, vs', rfl, ha, h'⟩ := evs_cons_inv h
  obtain ⟨vb, vs'', rfl, hb, h''⟩ := evs_cons_inv h'
  obtain ⟨vc, vs''', rfl, hc, h'''⟩ := evs_cons_inv h''
  have : vs''' = [] := by
    have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at h'''; exact (Option.some.inj h''').symm
  subst this
  exact ⟨va, vb, vc, rfl, ha, hb, hc⟩

theorem ev_add3_inv {s : PanSemStateFiniteExact 64 σ} {a b c : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.op .add [a, b, c]) = some v) :
    ∃ x y z, ev s a = some (.val (.word x)) ∧ ev s b = some (.val (.word y)) ∧
      ev s c = some (.val (.word z)) ∧ v = .val (.word (x + (y + z))) := by
  have h' := h
  simp only [ev, evalHOLExact] at h'
  split at h'
  · rename_i values hvals
    split at h'
    · rename_i hall
      obtain ⟨va, vb, vc, rfl, ha, hb, hc⟩ := evs_three_inv (s := s) (a := a) (b := b) (c := c) hvals
      simp only [List.all_cons, List.all_nil, Bool.and_true, Bool.and_eq_true] at hall
      obtain ⟨hwa, hwb, hwc⟩ := hall
      match va, vb, vc, hwa, hwb, hwc with
      | .val (.word x), .val (.word y), .val (.word z), _, _, _ =>
          refine ⟨x, y, z, ha, hb, hc, ?_⟩
          rw [ev_add3 ha hb hc] at h
          exact (Option.some.inj h).symm
    · simp at h'
  · simp at h'

theorem dlk_set {u : PanSemStateFiniteExact 64 σ} {x y : String} {v : ValueHOL 64} {w : BitVec 64}
    (h : DLk u y w) (hne : nm x ≠ nm y) : DLk (setVarHOLFinite (nm x) v u) y w := by
  unfold DLk; rw [lk_set_ne _ _ hne]; exact h

theorem dlk_self {u : PanSemStateFiniteExact 64 σ} {x : String} {w : BitVec 64} :
    DLk (setVarHOLFinite (nm x) (.val (.word w)) u) x w := by
  unfold DLk; rw [lk_set_self]

theorem dlk_restore {u : PanSemStateFiniteExact 64 σ} {x y : String} {old : Option (ValueHOL 64)}
    {w : BitVec 64} (h : DLk u y w) (hne : nm x ≠ nm y) :
    DLk ({ u with locals := u.locals.resVarEq (nm x, old) } : PanSemStateFiniteExact 64 σ) y w := by
  unfold DLk; rw [lk_restore _ _ _ _ hne]; exact h

end helpers

/-- The frame and locals after `htab_set`'s four declarations. -/
structure SU {σ : Type} (s0 : PanSemStateFiniteExact 64 σ) (T key val ℓ : BitVec 64)
    (U : PanSemStateFiniteExact 64 σ) : Prop where
  m : U.memory = s0.memory
  md : U.memaddrs = s0.memaddrs
  b : U.be = s0.be
  g : ∀ g, U.globals.lookup g = s0.globals.lookup g
  t : DLk U "t" T
  k : DLk U "key" key
  v : DLk U "value" val
  kl : DLk U "klen" (hdr s0.memory T 0)
  st : DLk U "stride" (hdr s0.memory T 8)
  lf : DLk U "leaf" ℓ
  ks : DLk U "keys" (hdr s0.memory T 32)

section hoare
variable {σ : Type} {X : Ctx 64}

/-- **The empty table**: a new leaf becomes the root. -/
theorem setA_hoare (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ)
    {T key val H0 : BitVec 64} {L : BitVec 64 → Prop} {fl : List (BitVec 64)}
    (hs : SetCtx s0.memory s0.memaddrs s0.be T key H0 L fl)
    (hhp : s0.globals.lookup hpN = some (.val (.word H0))) (U : PanSemStateFiniteExact 64 σ)
    (hU : SU s0 T key val 0 U) (hw : WalkFrom s0.memory s0.memaddrs s0.be T key (hdr s0.memory T 56) 0) :
    Hoare σ X (fun t => t = U) setA
      (fun r u => r ≠ none ∧ ∀ v, r = some (.returned v) → SetPostK s0 u T val H0) := by
  refine hoare_decCallS (funSpec_new_leaf hC) fun s _ hsU vs hvs callee v st hR _ _ => ?_
  subst hsU
  obtain ⟨a1, a2, a3, rfl, h1, h2, h3⟩ := evs_three_inv hvs
  rw [ev_lv_w hU.t] at h1; rw [ev_lv_w hU.k] at h2; rw [ev_lv_w hU.v] at h3
  cases h1; cases h2; cases h3
  have e1 : (callEntryStateHOLFinite s callee).memory = s0.memory := hU.m
  have e2 : (callEntryStateHOLFinite s callee).memaddrs = s0.memaddrs := hU.md
  have e3 : (callEntryStateHOLFinite s callee).be = s0.be := hU.b
  have e4 : ∀ g, (callEntryStateHOLFinite s callee).globals.lookup g = s0.globals.lookup g := hU.g
  obtain ⟨nl, H1, rfl, hp1, ⟨mN, mC, hNN, hcp, hmem⟩, hgo, hgd, hgb⟩ :=
    hR T key val H0 fl rfl (by rw [e1]; exact setCtx_nlpre hs) (by rw [e4]; exact hhp) v rfl
  rw [e1, e2, e3] at hNN
  rw [e2, e3] at hcp
  have hL := nl_post (setCtx_nlpre hs) hNN hcp (val := val)
  rw [← hmem] at hL
  rw [e2] at hgd; rw [e3] at hgb
  have hT1 : DLk (setVarHOLFinite (nm "nl") (.val (.word nl)) { st with locals := s.locals }) "t" T :=
    dlk_set hU.t (by decide)
  have hn1 : DLk (setVarHOLFinite (nm "nl") (.val (.word nl)) { st with locals := s.locals }) "nl" nl :=
    dlk_self
  refine hoare_pre (P := SL st.memory (setVarHOLFinite (nm "nl") (.val (.word nl))
      { st with locals := s.locals }).locals st.globals st.memaddrs st.be) ?_
    (fun t _ ht => by subst ht; exact ⟨rfl, rfl, rfl, rfl, rfl⟩)
  refine hseq (hstL (X := X) st.memory (T + BitVec.ofNat 64 56) nl
    (fun t _ hl => ev_fwdw (ev_tAddr (dlk_of hl hT1))) (fun t _ hl => ev_fwd (ev_lv_w (dlk_of hl hn1)))) ?_
  refine hoare_return fun t _ ⟨hm, hl, hg, hd, hb⟩ w _ => ⟨by simp, fun v' _ => ?_⟩
  have H := setA_postM hs hw hL
  rw [← hm] at H
  refine setPostK_of H (by show t.memaddrs = _; rw [hd, hgd]) (by show t.be = _; rw [hb, hgb])
    (by show t.globals.lookup hpN = _; rw [hg]; exact hp1) (fun g hgn => ?_)
  show t.globals.lookup g = _
  rw [hg, hgo g hgn, e4]

/-! ### The search loop -/

/-- The frame during the search. -/
def SFr (s0 : PanSemStateFiniteExact 64 σ) (T key val dv : BitVec 64) (u : PanSemStateFiniteExact 64 σ) :
    Prop :=
  u.memory = s0.memory ∧ u.memaddrs = s0.memaddrs ∧ u.be = s0.be ∧
  (∀ g, u.globals.lookup g = s0.globals.lookup g) ∧
  DLk u "t" T ∧ DLk u "key" key ∧ DLk u "value" val ∧ DLk u "d" dv ∧ DLk u "nodes" (hdr s0.memory T 40)

theorem sfr_set {s0 u : PanSemStateFiniteExact 64 σ} {T key val dv : BitVec 64} {x : String}
    {v : ValueHOL 64} (h : SFr s0 T key val dv u) (h1 : nm x ≠ nm "t") (h2 : nm x ≠ nm "key")
    (h3 : nm x ≠ nm "value") (h4 : nm x ≠ nm "d") (h5 : nm x ≠ nm "nodes") :
    SFr s0 T key val dv (setVarHOLFinite (nm x) v u) := by
  obtain ⟨a1, a2, a3, a4, a5, a6, a7, a8, a9⟩ := h
  exact ⟨a1, a2, a3, a4, dlk_set a5 h1, dlk_set a6 h2, dlk_set a7 h3, dlk_set a8 h4, dlk_set a9 h5⟩

theorem sfr_restore {s0 u : PanSemStateFiniteExact 64 σ} {T key val dv : BitVec 64} {x : String}
    {old : Option (ValueHOL 64)} (h : SFr s0 T key val dv u) (h1 : nm x ≠ nm "t") (h2 : nm x ≠ nm "key")
    (h3 : nm x ≠ nm "value") (h4 : nm x ≠ nm "d") (h5 : nm x ≠ nm "nodes") :
    SFr s0 T key val dv ({ u with locals := u.locals.resVarEq (nm x, old) } : PanSemStateFiniteExact 64 σ) := by
  obtain ⟨a1, a2, a3, a4, a5, a6, a7, a8, a9⟩ := h
  exact ⟨a1, a2, a3, a4, dlk_restore a5 h1, dlk_restore a6 h2, dlk_restore a7 h3, dlk_restore a8 h4,
    dlk_restore a9 h5⟩

/-- The loop invariant. -/
def SLI (s0 : PanSemStateFiniteExact 64 σ) (T key val dv ℓ : BitVec 64) (u : PanSemStateFiniteExact 64 σ) :
    Prop :=
  SFr s0 T key val dv u ∧ ∃ p n, DLk u "p" p ∧ DLk u "n" n ∧
    Pth s0.memory s0.memaddrs s0.be T key dv.toNat (hdr s0.memory T 56) p n ∧
    WalkFrom s0.memory s0.memaddrs s0.be T key n ℓ

/-- After the loop. -/
def SLE (s0 : PanSemStateFiniteExact 64 σ) (T key val dv ℓ : BitVec 64) (u : PanSemStateFiniteExact 64 σ) :
    Prop :=
  SFr s0 T key val dv u ∧ ∃ p n, DLk u "p" p ∧ DLk u "n" n ∧
    Pth s0.memory s0.memaddrs s0.be T key dv.toNat (hdr s0.memory T 56) p n ∧
    WalkFrom s0.memory s0.memaddrs s0.be T key n ℓ ∧ n ≠ 0 ∧ dv.toNat ≤ (KIND s0.memory T n).toNat

theorem setLoop_body (s0 : PanSemStateFiniteExact 64 σ) (T key val dv ℓ : BitVec 64)
    (hdK : dv.toNat ≤ (KB s0.memory T).toNat) :
    Hoare σ X (fun u => SLI s0 T key val dv ℓ u ∧ CondTrue u setLoopCond) setLoopBody
      (fun r t => (r = none → SLI s0 T key val dv ℓ t) ∧ (r = some .continue → SLI s0 T key val dv ℓ t) ∧
        (r = some .break → (none : Option (PanSemResultExact 64)) = none ∧ SLE s0 T key val dv ℓ t) ∧
        (∀ v, r = some (.returned v) → r = none ∧ SLE s0 T key val dv ℓ t)) := by
  refine hoare_dec fun u _ ⟨⟨hF, p, n, hp, hn, hpth, hwn⟩, hc⟩ vb hvb _ => ?_
  have e := ev_nA_load hF.2.2.2.2.2.2.2.2 hn hvb
  rw [hF.1] at e
  subst e
  have hn0 : n ≠ 0 := by
    obtain ⟨w, hw, hw0⟩ := hc
    obtain ⟨a, b, ha, hb, hne⟩ := cmp_true hw hw0
    rw [ev_lv_w hn] at ha; rw [ev_cw] at hb
    cases ha; cases hb
    simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hne
  have hK : rd s0.memory (na (hdr s0.memory T 40) n 24) = KIND s0.memory T n := rfl
  rw [hK]
  have hF1 := sfr_set (x := "b") (v := .val (.word (KIND s0.memory T n))) hF (by decide) (by decide) (by decide)
    (by decide) (by decide)
  have hb1 : DLk (setVarHOLFinite (nm "b") (.val (.word (KIND s0.memory T n))) u) "b" (KIND s0.memory T n) :=
    dlk_self
  have hp1 : DLk (setVarHOLFinite (nm "b") (.val (.word (KIND s0.memory T n))) u) "p" p := dlk_set hp (by decide)
  have hn1 : DLk (setVarHOLFinite (nm "b") (.val (.word (KIND s0.memory T n))) u) "n" n := dlk_set hn (by decide)
  generalize setVarHOLFinite (nm "b") (.val (.word (KIND s0.memory T n))) u = u1 at hF1 hb1 hp1 hn1 ⊢
  refine hoare_seq (R := fun r t => t = u1 ∧ ((r = some .break ∧ dv.toNat ≤ (KIND s0.memory T n).toNat) ∨
      (r = none ∧ (KIND s0.memory T n).toNat < dv.toNat))) ?_ ?_ ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_break fun t _ ⟨ht, w, hw, hw0⟩ => ⟨ht, Or.inl ⟨rfl, ?_⟩⟩
      obtain ⟨a, b, ha, hb, hge⟩ := cmp_true hw hw0
      rw [ht, ev_lv_w hb1] at ha; rw [ht, ev_lv_w hF1.2.2.2.2.2.2.2.1] at hb
      cases ha; cases hb
      exact notLower_true hge
    · refine hoare_skip fun t _ ⟨ht, hw⟩ => ⟨ht, Or.inr ⟨rfl, ?_⟩⟩
      obtain ⟨a, b, ha, hb, hlt⟩ := cmp_false hw
      rw [ht, ev_lv_w hb1] at ha; rw [ht, ev_lv_w hF1.2.2.2.2.2.2.2.1] at hb
      cases ha; cases hb
      exact notLower_false hlt
  · rintro r t _ hr _ ⟨rfl, hor⟩
    rcases hor with ⟨rfl, hge⟩ | ⟨h, -⟩
    · refine ⟨fun h => (by cases h), fun h => (by cases h), fun _ => ⟨rfl, ?_, p, n, ?_, ?_, hpth, hwn, hn0, hge⟩,
        fun v h => (by cases h)⟩
      · exact sfr_restore hF1 (by decide) (by decide) (by decide) (by decide) (by decide)
      · exact dlk_restore hp1 (by decide)
      · exact dlk_restore hn1 (by decide)
    · exact absurd h hr
  · refine hoare_pre (P := fun t => t = u1 ∧ (KIND s0.memory T n).toNat < dv.toNat) ?_
      (fun t _ h => ⟨h.1, h.2.elim (fun h' => absurd h'.1 (by simp)) (fun h' => h'.2)⟩)
    refine hoare_seq (R := fun r t => r = none ∧ t = setVarHOLFinite (nm "p") (.val (.word n)) u1 ∧
        (KIND s0.memory T n).toNat < dv.toNat) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_assign fun t _ ⟨ht, hlt⟩ v hv _ => ?_
      rw [ht, ev_lv_w hn1] at hv
      cases hv
      exact ⟨rfl, by rw [ht], hlt⟩
    · have hF2 := sfr_set (x := "p") (v := .val (.word n)) hF1 (by decide) (by decide) (by decide) (by decide)
        (by decide)
      have hb2 : DLk (setVarHOLFinite (nm "p") (.val (.word n)) u1) "b" (KIND s0.memory T n) :=
        dlk_set hb1 (by decide)
      have hp2 : DLk (setVarHOLFinite (nm "p") (.val (.word n)) u1) "p" n := dlk_self
      have hn2 : DLk (setVarHOLFinite (nm "p") (.val (.word n)) u1) "n" n := dlk_set hn1 (by decide)
      generalize setVarHOLFinite (nm "p") (.val (.word n)) u1 = u2 at hF2 hb2 hp2 hn2 ⊢
      have step : ∀ (c : Bool) (off : Nat), (c = true → off = 8) → (c = false → off = 16) →
          kbit s0.memory s0.memaddrs s0.be key (KIND s0.memory T n) = some c →
          (KIND s0.memory T n).toNat < dv.toNat →
          ∀ t : PanSemStateFiniteExact 64 σ, t = u2 → ∀ v, ev t (.load .one (nA "n" off)) = some v →
          let t' := setVarHOLFinite (nm "n") v t
          SLI s0 T key val dv ℓ ({ t' with locals := t'.locals.resVarEq (nm "b", u.locals.lookup (nm "b")) } :
            PanSemStateFiniteExact 64 σ) := by
        intro c off h8 h16 hbit hlt t ht v hv t'
        subst ht
        have e := ev_nA_load hF2.2.2.2.2.2.2.2.2 hn2 hv
        rw [hF2.1] at e
        subst e
        have hkn : KIND s0.memory T n ≠ KB s0.memory T := fun e => by rw [e] at hlt; omega
        have hch : rd s0.memory (na (hdr s0.memory T 40) n off) = child s0.memory T n c := by
          cases c
          · rw [h16 rfl]; rfl
          · rw [h8 rfl]; rfl
        refine ⟨sfr_restore (sfr_set hF2 (by decide) (by decide) (by decide) (by decide) (by decide))
          (by decide) (by decide) (by decide) (by decide) (by decide), n, child s0.memory T n c,
          dlk_restore (dlk_set hp2 (by decide)) (by decide), ?_, .step c hpth hn0 hkn hlt hbit,
          walk_step' hwn hn0 hkn hbit⟩
        rw [← hch]
        exact dlk_restore dlk_self (by decide)
      refine hoare_ite ?_ ?_
      · refine hoare_assign fun t _ ⟨⟨_, ht, hlt⟩, w, hw, hw0⟩ v hv _ => ?_
        have hbit := (bitZ_inv (x := "b") (ht ▸ hF2.2.2.2.2.2.1) (ht ▸ hb2) hw).1 hw0
        rw [ht, hF2.1, hF2.2.1, hF2.2.2.1] at hbit
        exact ⟨fun _ => step true 8 (fun _ => rfl) (fun h => by cases h) hbit hlt t ht v hv,
          fun h => (by cases h), fun h => (by cases h), fun _ h => (by cases h)⟩
      · refine hoare_assign fun t _ ⟨⟨_, ht, hlt⟩, hw⟩ v hv _ => ?_
        have hbit := (bitZ_inv (x := "b") (ht ▸ hF2.2.2.2.2.2.1) (ht ▸ hb2) hw).2 rfl
        rw [ht, hF2.1, hF2.2.1, hF2.2.2.1] at hbit
        exact ⟨fun _ => step false 16 (fun h => by cases h) (fun _ => rfl) hbit hlt t ht v hv,
          fun h => (by cases h), fun h => (by cases h), fun _ h => (by cases h)⟩

/-! ### The splice -/

/-- The last store: the root, or `p`'s child that was `n`. -/
theorem setPStore_hoare {M : Mem} {Lc G : HolFiniteMapExact MlS (ValueHOL 64)} {D0 : BitVec 64 → Prop} {B0 : Bool}
    {T N ni n p : BitVec 64} (hT : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = Lc → DLk t "t" T)
    (hN : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = Lc → DLk t "nodes" N)
    (hni : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = Lc → DLk t "ni" ni)
    (hn : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = Lc → DLk t "n" n)
    (hp : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = Lc → DLk t "p" p) :
    Hoare σ X (SL M Lc G D0 B0)
      (.ite (.cmp .equal (lv (nm "p")) (cw 0)) (.store (tAddr 56) (lv (nm "ni")))
        (.ite (.cmp .equal (.load .one (nA "p" 8)) (lv (nm "n"))) (.store (nA "p" 8) (lv (nm "ni")))
          (.store (nA "p" 16) (lv (nm "ni")))))
      (fun r t => r = none ∧ SL (if p = 0 then upd M (T + BitVec.ofNat 64 56) ni
        else if rd M (na N p 8) = n then upd M (na N p 8) ni else upd M (na N p 16) ni) Lc G D0 B0 t) := by
  refine hoare_ite ?_ ?_
  · intro t ht ⟨hsl, w, hw, hw0⟩ htr
    have hp0 : p = 0 := cmp_eq_true (ev_lv_w (hp t hsl.2.1)) (ev_cw t 0) hw hw0
    rw [if_pos hp0]
    exact hstL (X := X) M (T + BitVec.ofNat 64 56) ni (fun t' _ hl => ev_fwdw (ev_tAddr (hT t' hl)))
      (fun t' _ hl => ev_fwd (ev_lv_w (hni t' hl))) t ht hsl htr
  · intro t ht ⟨hsl, hw⟩ htr
    have hp0 : p ≠ 0 := cmp_eq_false (ev_lv_w (hp t hsl.2.1)) (ev_cw t 0) hw
    rw [if_neg hp0]
    refine (hoare_ite (Q := fun r t => r = none ∧ SL (if rd M (na N p 8) = n then upd M (na N p 8) ni
      else upd M (na N p 16) ni) Lc G D0 B0 t) ?_ ?_) t ht hsl htr
    · intro t ht ⟨hsl, w, hw, hw0⟩ htr
      obtain ⟨x, y, hx, hy, -⟩ := cmp_true hw hw0
      have e := ev_nA_load (hN t hsl.2.1) (hp t hsl.2.1) hx
      rw [hsl.1] at e
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at e
      subst e
      have hpn : rd M (na N p 8) = n := cmp_eq_true hx (ev_lv_w (hn t hsl.2.1)) hw hw0
      rw [if_pos hpn]
      exact hstL (X := X) M (na N p 8) ni (fun t' _ hl => ev_fwdw (ev_nA (hN t' hl) (hp t' hl)))
        (fun t' _ hl => ev_fwd (ev_lv_w (hni t' hl))) t ht hsl htr
    · intro t ht ⟨hsl, hw⟩ htr
      obtain ⟨x, y, hx, hy, -⟩ := cmp_false hw
      have e := ev_nA_load (hN t hsl.2.1) (hp t hsl.2.1) hx
      rw [hsl.1] at e
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at e
      subst e
      have hpn : rd M (na N p 8) ≠ n := cmp_eq_false hx (ev_lv_w (hn t hsl.2.1)) hw
      rw [if_neg hpn]
      exact hstL (X := X) M (na N p 16) ni (fun t' _ hl => ev_fwdw (ev_nA (hN t' hl) (hp t' hl)))
        (fun t' _ hl => ev_fwd (ev_lv_w (hni t' hl))) t ht hsl htr

/-- The stores of the splice. -/
theorem setStores_hoare {mI : Mem} {Lc G : HolFiniteMapExact MlS (ValueHOL 64)} {D0 : BitVec 64 → Prop}
    {B0 : Bool} {T key dv nl ni n p : BitVec 64} (hT : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = Lc → DLk t "t" T)
    (hN : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = Lc → DLk t "nodes" (hdr mI T 40))
    (hni : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = Lc → DLk t "ni" ni)
    (hnl : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = Lc → DLk t "nl" nl)
    (hn : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = Lc → DLk t "n" n)
    (hp : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = Lc → DLk t "p" p)
    (hk : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = Lc → DLk t "key" key)
    (hd : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = Lc → DLk t "d" dv)
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (hQ : ∀ c, kbit (insM3 mI T nl ni n p) D0 B0 key dv = some c → ∀ t : PanSemStateFiniteExact 64 σ,
      SL (insMem mI T nl ni n p c) Lc G D0 B0 t → ∀ v, Q (some (.returned v)) (emptyLocalsHOLFinite t)) :
    Hoare σ X (SL mI Lc G D0 B0) setStores Q := by
  refine hseq (hstL (X := X) mI (na (hdr mI T 40) ni 0) p (fun t _ hl => ev_fwdw (ev_nA (hN t hl) (hni t hl)))
    (fun t _ hl => ev_fwd (ev_lv_w (hp t hl)))) ?_
  refine hseq (hstL (X := X) _ (na (hdr mI T 40) nl 0) ni (fun t _ hl => ev_fwdw (ev_nA (hN t hl) (hnl t hl)))
    (fun t _ hl => ev_fwd (ev_lv_w (hni t hl)))) ?_
  refine hseq (hstL (X := X) _ (na (hdr mI T 40) n 0) ni (fun t _ hl => ev_fwdw (ev_nA (hN t hl) (hn t hl)))
    (fun t _ hl => ev_fwd (ev_lv_w (hni t hl)))) ?_
  refine hoare_seq (R := fun r t => r = none ∧ ∃ c, kbit (insM3 mI T nl ni n p) D0 B0 key dv = some c ∧
      SL (insM5 mI T nl ni n p c) Lc G D0 B0 t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · intro t ht ⟨hsl, w, hw, hw0⟩ htr
      have hbit := (bitZ_inv (x := "d") (hk t hsl.2.1) (hd t hsl.2.1) hw).1 hw0
      rw [hsl.1, hsl.2.2.2.1, hsl.2.2.2.2] at hbit
      refine hoare_post (Q' := fun r t => r = none ∧ ∃ c, kbit (insM3 mI T nl ni n p) D0 B0 key dv = some c ∧
          SL (insM5 mI T nl ni n p c) Lc G D0 B0 t) (hseq (hstL (X := X) _ (na (hdr mI T 40) ni 8) nl
          (fun t _ hl => ev_fwdw (ev_nA (hN t hl) (hni t hl))) (fun t _ hl => ev_fwd (ev_lv_w (hnl t hl))))
        (hstL (X := X) _ (na (hdr mI T 40) ni 16) n
          (fun t _ hl => ev_fwdw (ev_nA (hN t hl) (hni t hl))) (fun t _ hl => ev_fwd (ev_lv_w (hn t hl)))))
        (fun r t' _ _ ⟨hr, hsl'⟩ => ⟨hr, true, hbit, hsl'⟩) t ht hsl htr
    · intro t ht ⟨hsl, hw⟩ htr
      have hbit := (bitZ_inv (x := "d") (hk t hsl.2.1) (hd t hsl.2.1) hw).2 rfl
      rw [hsl.1, hsl.2.2.2.1, hsl.2.2.2.2] at hbit
      refine hoare_post (Q' := fun r t => r = none ∧ ∃ c, kbit (insM3 mI T nl ni n p) D0 B0 key dv = some c ∧
          SL (insM5 mI T nl ni n p c) Lc G D0 B0 t) (hseq (hstL (X := X) _ (na (hdr mI T 40) ni 8) n
          (fun t _ hl => ev_fwdw (ev_nA (hN t hl) (hni t hl))) (fun t _ hl => ev_fwd (ev_lv_w (hn t hl))))
        (hstL (X := X) _ (na (hdr mI T 40) ni 16) nl
          (fun t _ hl => ev_fwdw (ev_nA (hN t hl) (hni t hl))) (fun t _ hl => ev_fwd (ev_lv_w (hnl t hl)))))
        (fun r t' _ _ ⟨hr, hsl'⟩ => ⟨hr, false, hbit, hsl'⟩) t ht hsl htr
  · rintro t ht ⟨-, c, hc, hsl⟩ htr
    refine (hseq (setPStore_hoare (X := X) hT hN hni hn hp)
      (hoare_return fun t' _ hsl' w _ => hQ c hc t' hsl' w)) t ht hsl htr

/-- The splice: two allocations and the stores. -/
theorem setSplice_hoare (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ)
    {T key val H0 ℓ dv p n : BitVec 64} {L : BitVec 64 → Prop} {fl : List (BitVec 64)}
    (hs : SetCtx s0.memory s0.memaddrs s0.be T key H0 L fl)
    (hhp : s0.globals.lookup hpN = some (.val (.word H0))) (U : PanSemStateFiniteExact 64 σ)
    (hF : SFr s0 T key val dv U) (hp : DLk U "p" p) (hn : DLk U "n" n)
    (hpth : Pth s0.memory s0.memaddrs s0.be T key dv.toNat (hdr s0.memory T 56) p n)
    (hwn : WalkFrom s0.memory s0.memaddrs s0.be T key n ℓ) (hn0 : n ≠ 0)
    (hdn : dv.toNat ≤ (KIND s0.memory T n).toNat) (hℓ : ℓ ≠ 0)
    (hw : WalkFrom s0.memory s0.memaddrs s0.be T key (hdr s0.memory T 56) ℓ)
    (hdif : Dif s0.memory s0.memaddrs s0.be (keyPtr s0.memory T ℓ) key (hdr s0.memory T 0))
    (hfd : FDPost s0.memory s0.memaddrs s0.be key (keyPtr s0.memory T ℓ) (hdr s0.memory T 0) dv) :
    Hoare σ X (fun t => t = U) setSplice (fun r u => ∀ v, r = some (.returned v) → SetPostK s0 u T val H0) := by
  obtain ⟨hm, hmd, hbe, hg, hT, hk, hv, hd, -⟩ := hF
  refine hoare_decCallS (funSpec_new_leaf hC) fun s _ hsU vs hvs callee v st hR _ _ => ?_
  subst hsU
  obtain ⟨a1, a2, a3, rfl, h1, h2, h3⟩ := evs_three_inv hvs
  rw [ev_lv_w hT] at h1; rw [ev_lv_w hk] at h2; rw [ev_lv_w hv] at h3
  cases h1; cases h2; cases h3
  have e1 : (callEntryStateHOLFinite s callee).memory = s0.memory := hm
  have e2 : (callEntryStateHOLFinite s callee).memaddrs = s0.memaddrs := hmd
  have e3 : (callEntryStateHOLFinite s callee).be = s0.be := hbe
  have e4 : ∀ g, (callEntryStateHOLFinite s callee).globals.lookup g = s0.globals.lookup g := hg
  obtain ⟨nl, H1, rfl, hp1, ⟨mN, mC, hNN, hcp, hmem⟩, hgo, hgd, hgb⟩ :=
    hR T key val H0 fl rfl (by rw [e1]; exact setCtx_nlpre hs) (by rw [e4]; exact hhp) v rfl
  rw [e1, e2, e3] at hNN
  rw [e2, e3] at hcp
  have hL := nl_post (setCtx_nlpre hs) hNN hcp (val := val)
  rw [← hmem] at hL
  rw [e2] at hgd; rw [e3] at hgb
  -- after `htab_new_leaf`
  have hT1 : DLk (setVarHOLFinite (nm "nl") (.val (.word nl)) { st with locals := s.locals }) "t" T :=
    dlk_set hT (by decide)
  have hk1 : DLk (setVarHOLFinite (nm "nl") (.val (.word nl)) { st with locals := s.locals }) "key" key :=
    dlk_set hk (by decide)
  have hd1 : DLk (setVarHOLFinite (nm "nl") (.val (.word nl)) { st with locals := s.locals }) "d" dv :=
    dlk_set hd (by decide)
  have hp1' : DLk (setVarHOLFinite (nm "nl") (.val (.word nl)) { st with locals := s.locals }) "p" p :=
    dlk_set hp (by decide)
  have hn1 : DLk (setVarHOLFinite (nm "nl") (.val (.word nl)) { st with locals := s.locals }) "n" n :=
    dlk_set hn (by decide)
  have hnl1 : DLk (setVarHOLFinite (nm "nl") (.val (.word nl)) { st with locals := s.locals }) "nl" nl :=
    dlk_self
  have hm1 : (setVarHOLFinite (nm "nl") (.val (.word nl)) { st with locals := s.locals }).memory =
    st.memory := rfl
  have hmd1 : (setVarHOLFinite (nm "nl") (.val (.word nl)) { st with locals := s.locals }).memaddrs =
    s0.memaddrs := hgd
  have hbe1 : (setVarHOLFinite (nm "nl") (.val (.word nl)) { st with locals := s.locals }).be = s0.be := hgb
  have hg1 : ∀ g, (setVarHOLFinite (nm "nl") (.val (.word nl)) { st with locals := s.locals }).globals.lookup g =
    st.globals.lookup g := fun _ => rfl
  generalize setVarHOLFinite (nm "nl") (.val (.word nl)) { st with locals := s.locals } = u1
    at hT1 hk1 hd1 hp1' hn1 hnl1 hm1 hmd1 hbe1 hg1 ⊢
  refine hoare_decCallS (funSpec_new_internal hC) fun s' _ hs'u vs' hvs' callee' v' st' hR' _ _ => ?_
  subst hs'u
  obtain ⟨b1, b2, rfl, hb1, hb2⟩ := evs_two_inv hvs'
  rw [ev_lv_w hT1] at hb1; rw [ev_lv_w hd1] at hb2
  cases hb1; cases hb2
  have f1 : (callEntryStateHOLFinite s' callee').memory = st.memory := hm1
  have f2 : (callEntryStateHOLFinite s' callee').memaddrs = s0.memaddrs := hmd1
  have f3 : (callEntryStateHOLFinite s' callee').be = s0.be := hbe1
  have f4 : ∀ g, (callEntryStateHOLFinite s' callee').globals.lookup g = st.globals.lookup g := hg1
  obtain ⟨ni, H2, rfl, hp2, ⟨mN2, hNN2, hmem2⟩, hgo2, hgd2, hgb2⟩ :=
    hR' T dv H1 fl.tail rfl (by rw [f1]; exact nl_nnpre hs hL) (by rw [f4]; exact hp1) v' rfl
  rw [f1, f2, f3] at hNN2
  rw [f2] at hgd2; rw [f3] at hgb2
  -- after `htab_new_internal`
  have hT2 : DLk (setVarHOLFinite (nm "ni") (.val (.word ni)) { st' with locals := s'.locals }) "t" T :=
    dlk_set hT1 (by decide)
  have hk2 : DLk (setVarHOLFinite (nm "ni") (.val (.word ni)) { st' with locals := s'.locals }) "key" key :=
    dlk_set hk1 (by decide)
  have hd2 : DLk (setVarHOLFinite (nm "ni") (.val (.word ni)) { st' with locals := s'.locals }) "d" dv :=
    dlk_set hd1 (by decide)
  have hp2' : DLk (setVarHOLFinite (nm "ni") (.val (.word ni)) { st' with locals := s'.locals }) "p" p :=
    dlk_set hp1' (by decide)
  have hn2 : DLk (setVarHOLFinite (nm "ni") (.val (.word ni)) { st' with locals := s'.locals }) "n" n :=
    dlk_set hn1 (by decide)
  have hnl2 : DLk (setVarHOLFinite (nm "ni") (.val (.word ni)) { st' with locals := s'.locals }) "nl" nl :=
    dlk_set hnl1 (by decide)
  have hni2 : DLk (setVarHOLFinite (nm "ni") (.val (.word ni)) { st' with locals := s'.locals }) "ni" ni :=
    dlk_self
  have hm2 : (setVarHOLFinite (nm "ni") (.val (.word ni)) { st' with locals := s'.locals }).memory =
    st'.memory := rfl
  have hmd2 : (setVarHOLFinite (nm "ni") (.val (.word ni)) { st' with locals := s'.locals }).memaddrs =
    s0.memaddrs := hgd2
  have hbe2 : (setVarHOLFinite (nm "ni") (.val (.word ni)) { st' with locals := s'.locals }).be = s0.be := hgb2
  have hg2 : (setVarHOLFinite (nm "ni") (.val (.word ni)) { st' with locals := s'.locals }).globals =
    st'.globals := rfl
  generalize setVarHOLFinite (nm "ni") (.val (.word ni)) { st' with locals := s'.locals } = u2
    at hT2 hk2 hd2 hp2' hn2 hnl2 hni2 hm2 hmd2 hbe2 hg2 ⊢
  refine hoare_seq (R := fun r t => r = none ∧
      t = setVarHOLFinite (nm "nodes") (.val (.word (hdr st'.memory T 40))) u2) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun t _ ht v hv _ => ?_
    rw [ht] at hv
    have e := ev_tLoad_w hT2 hv
    rw [hm2] at e
    rw [e, ht]
    exact ⟨rfl, rfl⟩
  rintro t ht ⟨-, rfl⟩ htr
  have L3 : ∀ {x : String} {w : BitVec 64}, DLk u2 x w → nm "nodes" ≠ nm x →
      ∀ t' : PanSemStateFiniteExact 64 σ, t'.locals =
        (setVarHOLFinite (nm "nodes") (.val (.word (hdr st'.memory T 40))) u2).locals → DLk t' x w :=
    fun h hne t' hl => dlk_of hl (dlk_set h hne)
  refine hoare_post (Q := fun r t => ∀ v, r = some (.returned v) → SetPostK s0 t T val H0)
    (setStores_hoare (X := X) (mI := st'.memory) (G := st'.globals) (D0 := s0.memaddrs) (B0 := s0.be)
    (L3 hT2 (by decide)) (fun t' hl => dlk_of hl dlk_self) (L3 hni2 (by decide)) (L3 hnl2 (by decide))
    (L3 hn2 (by decide)) (L3 hp2' (by decide)) (L3 hk2 (by decide)) (L3 hd2 (by decide))
    (fun c hc t' hsl w => ?_)) (fun r t' _ _ h v hv => h v hv) _ ht
    ⟨by rw [← hm2]; rfl, rfl, by rw [← hg2]; rfl, by rw [← hmd2]; rfl, by rw [← hbe2]; rfl⟩ htr
  intro v' _
  rw [hmem2] at hc hsl
  have H := setC_postM hs hw hℓ hdif hfd hpth hwn hn0 hdn hL hNN2 hc
  rw [← hsl.1] at H
  obtain ⟨-, -, hgt, hdt, hbt⟩ := hsl
  refine setPostK_of H (by show t'.memaddrs = _; exact hdt) (by show t'.be = _; exact hbt)
    (by show t'.globals.lookup hpN = _; rw [hgt]; exact hp2) (fun g hgn => ?_)
  show t'.globals.lookup g = _
  rw [hgt, hgo2 g hgn, f4, hgo g hgn, e4]

theorem funSpec_fd_set (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_first_diff") (fun vs s r t => (∀ A B KL : BitVec 64,
      vs = [.val (.word A), .val (.word B), .val (.word KL)] → KL.toNat ≤ 2 ^ 20 →
      ∀ dv, r = .returned (.val (.word dv)) → FDPost s.memory s.memaddrs s.be A B KL dv) ∧
      t.memory = s.memory ∧ t.be = s.be ∧ t.memaddrs = s.memaddrs ∧
      ∀ g, t.globals.lookup g = s.globals.lookup g) :=
  (funSpec_first_diff hC).and ((funSpec_first_diff_mw hC).and ((funSpec_be _).and ((funSpec_md _).and
    (funSpec_first_diff_gw hC))))

/-- The search and the splice (after `memeq` returned `0`). -/
theorem setC_hoare (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ)
    {T key val H0 ℓ : BitVec 64} {L : BitVec 64 → Prop} {fl : List (BitVec 64)}
    (hs : SetCtx s0.memory s0.memaddrs s0.be T key H0 L fl)
    (hhp : s0.globals.lookup hpN = some (.val (.word H0))) (U : PanSemStateFiniteExact 64 σ)
    (hU : SU s0 T key val ℓ U) (hℓ : ℓ ≠ 0)
    (hw : WalkFrom s0.memory s0.memaddrs s0.be T key (hdr s0.memory T 56) ℓ)
    (hdif : Dif s0.memory s0.memaddrs s0.be (keyPtr s0.memory T ℓ) key (hdr s0.memory T 0)) :
    Hoare σ X (fun t => t = U) setC (fun r u => ∀ v, r = some (.returned v) → SetPostK s0 u T val H0) := by
  refine hoare_decCallS (funSpec_fd_set hC) fun s _ hsU vs hvs callee v st hR _ hsh => ?_
  subst hsU
  obtain ⟨hfdz, hmst, hbst, hdst, hgst⟩ := hR
  obtain ⟨a1, a2, a3, rfl, h1, h2, h3⟩ := evs_three_inv hvs
  rw [ev_lv_w hU.k] at h1
  rw [setKey, ev_add2 (ev_lv_w hU.ks) (ev_mul2 (ev_lv_w hU.lf) (ev_lv_w hU.st))] at h2
  rw [ev_lv_w hU.kl] at h3
  cases h1; cases h2; cases h3
  obtain ⟨dv, rfl⟩ := val_of_shapeEq_one' hsh
  have hKL : (hdr s0.memory T 0).toNat ≤ 2 ^ 20 := by
    have := (lay_of_sep hs.sep).KL; have := hs.ex.bnd.1; omega
  have hfd := hfdz key (keyPtr s0.memory T ℓ) (hdr s0.memory T 0) rfl hKL dv rfl
  have e1 : (callEntryStateHOLFinite s callee).memory = s0.memory := hU.m
  have e2 : (callEntryStateHOLFinite s callee).memaddrs = s0.memaddrs := hU.md
  have e3 : (callEntryStateHOLFinite s callee).be = s0.be := hU.b
  rw [e1, e2, e3] at hfd
  have hdK : dv.toNat ≤ (KB s0.memory T).toNat := by
    have hkb : (KB s0.memory T).toNat = 8 * (hdr s0.memory T 0).toNat := by
      unfold KB; rw [BitVec.toNat_mul, BitVec.toNat_ofNat]; omega
    rw [hkb]
    rcases hfd with ⟨h, -⟩ | ⟨h, -⟩ <;> omega
  -- after the call
  have hF1 : SFr s0 T key val dv (setVarHOLFinite (nm "d") (.val (.word dv)) { st with locals := s.locals }) ∨
      True := Or.inr trivial
  clear hF1
  have hm1 : (setVarHOLFinite (nm "d") (.val (.word dv)) { st with locals := s.locals }).memory = s0.memory :=
    hmst.trans hU.m
  have hmd1 : (setVarHOLFinite (nm "d") (.val (.word dv)) { st with locals := s.locals }).memaddrs =
    s0.memaddrs := hdst.trans hU.md
  have hbe1 : (setVarHOLFinite (nm "d") (.val (.word dv)) { st with locals := s.locals }).be = s0.be :=
    hbst.trans hU.b
  have hg1 : ∀ g, (setVarHOLFinite (nm "d") (.val (.word dv)) { st with locals := s.locals }).globals.lookup g =
    s0.globals.lookup g := fun g => (hgst g).trans (hU.g g)
  have hT1 : DLk (setVarHOLFinite (nm "d") (.val (.word dv)) { st with locals := s.locals }) "t" T :=
    dlk_set hU.t (by decide)
  have hk1 : DLk (setVarHOLFinite (nm "d") (.val (.word dv)) { st with locals := s.locals }) "key" key :=
    dlk_set hU.k (by decide)
  have hv1 : DLk (setVarHOLFinite (nm "d") (.val (.word dv)) { st with locals := s.locals }) "value" val :=
    dlk_set hU.v (by decide)
  have hd1 : DLk (setVarHOLFinite (nm "d") (.val (.word dv)) { st with locals := s.locals }) "d" dv := dlk_self
  generalize setVarHOLFinite (nm "d") (.val (.word dv)) { st with locals := s.locals } = u1
    at hm1 hmd1 hbe1 hg1 hT1 hk1 hv1 hd1 ⊢
  -- `nodes`, `p`, `n`
  refine hoare_dec fun u2 _ hu2 v2 hv2 _ => ?_
  have hu2' : u2 = u1 := hu2
  subst hu2'
  have e := ev_tLoad_w hT1 hv2
  rw [hm1] at e
  subst e
  refine hoare_dec fun u3 _ hu3 v3 hv3 _ => ?_
  have hu3' : u3 = setVarHOLFinite (nm "nodes") (.val (.word (hdr s0.memory T 40))) u2 := hu3
  subst hu3'
  rw [ev_cw] at hv3
  cases hv3
  refine hoare_dec fun u4 _ hu4 v4 hv4 _ => ?_
  have hu4' : u4 = setVarHOLFinite (nm "p") (.val (.word (BitVec.ofNat 64 0)))
      (setVarHOLFinite (nm "nodes") (.val (.word (hdr s0.memory T 40))) u2) := hu4
  subst hu4'
  have e := ev_tLoad_w (dlk_set (dlk_set hT1 (by decide)) (by decide)) hv4
  rw [show (setVarHOLFinite (nm "p") (.val (.word (BitVec.ofNat 64 0)))
      (setVarHOLFinite (nm "nodes") (.val (.word (hdr s0.memory T 40))) u2)).memory = s0.memory from hm1] at e
  subst e
  have hI : SLI s0 T key val dv ℓ (setVarHOLFinite (nm "n") (.val (.word (hdr s0.memory T 56)))
      (setVarHOLFinite (nm "p") (.val (.word (BitVec.ofNat 64 0)))
        (setVarHOLFinite (nm "nodes") (.val (.word (hdr s0.memory T 40))) u2))) := by
    refine ⟨⟨hm1, hmd1, hbe1, hg1, dlk_set (dlk_set (dlk_set hT1 (by decide)) (by decide)) (by decide),
      dlk_set (dlk_set (dlk_set hk1 (by decide)) (by decide)) (by decide),
      dlk_set (dlk_set (dlk_set hv1 (by decide)) (by decide)) (by decide),
      dlk_set (dlk_set (dlk_set hd1 (by decide)) (by decide)) (by decide),
      dlk_set (dlk_set dlk_self (by decide)) (by decide)⟩, 0, hdr s0.memory T 56,
      dlk_set dlk_self (by decide), dlk_self, .start, hw⟩
  refine hoare_seq (R := fun r t => r = none ∧ SLE s0 T key val dv ℓ t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (hoare_while (I := SLI s0 T key val dv ℓ) (fun _ h => h)
      (setLoop_body s0 T key val dv ℓ hdK) ?_) (fun t _ ht => ht ▸ hI)
    rintro t _ ⟨-, p, n, -, hn, -, hwn⟩ h0
    exfalso
    obtain ⟨a, b, ha, hb, hne⟩ := cmp_false h0
    rw [ev_lv_w hn] at ha; rw [ev_cw] at hb
    cases ha; cases hb
    have hz : n = 0 := by simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hne
    subst hz
    exact hℓ (walkFrom_functional hwn .zero)
  · rintro t ht ⟨-, hF, p, n, hp, hn, hpth, hwn, hn0, hdn⟩ htr
    exact setSplice_hoare hC s0 hs hhp t hF hp hn hpth hwn hn0 hdn hℓ hw hdif hfd t ht rfl htr

theorem funSpec_memeq_set (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memeq") (fun vs s r t => (∀ A B N : BitVec 64,
      vs = [.val (.word A), .val (.word B), .val (.word N)] → N.toNat < 2 ^ 62 →
      r = .returned (.val (.word 0)) → Dif s.memory s.memaddrs s.be A B N) ∧
      t.memory = s.memory ∧ t.be = s.be ∧ t.memaddrs = s.memaddrs ∧
      ∀ g, t.globals.lookup g = s.globals.lookup g) :=
  (funSpec_memeq_zero hC).and ((funSpec_memeq_mw hC).and ((funSpec_be _).and ((funSpec_md _).and
    (funSpec_memeq_gw hC))))

/-- **The key is present or the search starts**: `memeq`, then overwrite or `setC`. -/
theorem setB_hoare (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ)
    {T key val H0 ℓ : BitVec 64} {L : BitVec 64 → Prop} {fl : List (BitVec 64)}
    (hs : SetCtx s0.memory s0.memaddrs s0.be T key H0 L fl)
    (hhp : s0.globals.lookup hpN = some (.val (.word H0))) (U : PanSemStateFiniteExact 64 σ)
    (hU : SU s0 T key val ℓ U) (hℓ : ℓ ≠ 0)
    (hw : WalkFrom s0.memory s0.memaddrs s0.be T key (hdr s0.memory T 56) ℓ) :
    Hoare σ X (fun t => t = U) setB (fun r u => ∀ v, r = some (.returned v) → SetPostK s0 u T val H0) := by
  refine hoare_decCallS (funSpec_memeq_set hC) fun s _ hsU vs hvs callee v st hR _ hsh => ?_
  subst hsU
  obtain ⟨hdz, hmst, hbst, hdst, hgst⟩ := hR
  obtain ⟨a1, a2, a3, rfl, h1, h2, h3⟩ := evs_three_inv hvs
  rw [setKey, ev_add2 (ev_lv_w hU.ks) (ev_mul2 (ev_lv_w hU.lf) (ev_lv_w hU.st))] at h1
  rw [ev_lv_w hU.k] at h2; rw [ev_lv_w hU.kl] at h3
  cases h1; cases h2; cases h3
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
  have hKL : (hdr s0.memory T 0).toNat < 2 ^ 62 := by
    have := (lay_of_sep hs.sep).KL; have := hs.ex.bnd.1; omega
  have e1 : st.memory = s0.memory := hmst.trans hU.m
  have e2 : st.memaddrs = s0.memaddrs := hdst.trans hU.md
  have e3 : st.be = s0.be := hbst.trans hU.b
  -- the state after the call
  have hSU : SU s0 T key val ℓ (setVarHOLFinite (nm "eq") (.val (.word w)) { st with locals := s.locals }) :=
    ⟨e1, e2, e3, fun g => (hgst g).trans (hU.g g), dlk_set hU.t (by decide), dlk_set hU.k (by decide),
      dlk_set hU.v (by decide), dlk_set hU.kl (by decide), dlk_set hU.st (by decide),
      dlk_set hU.lf (by decide), dlk_set hU.ks (by decide)⟩
  have heq : DLk (setVarHOLFinite (nm "eq") (.val (.word w)) { st with locals := s.locals }) "eq" w := dlk_self
  generalize setVarHOLFinite (nm "eq") (.val (.word w)) { st with locals := s.locals } = u1 at hSU heq ⊢
  refine hoare_seq (R := fun r t => (r = none ∧ t = u1 ∧ w = 0) ∨
      (r ≠ none ∧ ∀ v, r = some (.returned v) → SetPostK s0 t T val H0)) ?_ ?_ ?_
  · refine hoare_ite ?_ (hoare_skip fun t _ ⟨ht, hw0⟩ => Or.inl ⟨rfl, ht, ?_⟩)
    · -- overwrite the value
      rintro t ht ⟨ht0, -⟩ htr
      refine (hoare_seq (P := fun t => t = u1) (Q := fun r t => (r = none ∧ t = u1 ∧ w = 0) ∨
          (r ≠ none ∧ ∀ v, r = some (.returned v) → SetPostK s0 t T val H0)) (R := fun r t => r = none ∧
          SL (upd s0.memory (na (hdr s0.memory T 40) ℓ 8) val) u1.locals u1.globals u1.memaddrs u1.be t) ?_
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_) _ ht ht0 htr
      · refine hoare_store_w (fun _ => na (hdr s0.memory T 40) ℓ 8) (fun _ => val) ?_ ?_ ?_
        · rintro t _ rfl x hx
          obtain ⟨x1, y1, z1, hx1, hy1, hz1, hxe⟩ := ev_add3_inv hx
          have ex := ev_tLoad_w hSU.t hx1
          rw [hSU.m] at ex
          rw [ev_mul2 (ev_lv_w hSU.lf) (ev_cw _ 32)] at hy1
          rw [ev_cw] at hz1
          simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at ex hxe
          rw [hxe, ex, (word_inj hy1).symm, (word_inj hz1).symm]
          unfold na hdr; rw [BitVec.add_assoc]
        · rintro t _ rfl x hx
          rw [ev_lv_w hSU.v] at hx; exact (Option.some.inj hx).symm
        · rintro t _ rfl
          exact ⟨rfl, by show upd t.memory _ _ = _; rw [hSU.m], rfl, rfl, rfl, rfl⟩
      · refine hoare_return fun t _ ⟨_, hm, hl, hg, hd, hb⟩ x _ => Or.inr ⟨by simp, fun v' _ => ?_⟩
        have H := setB_postM (val := val) hs hw hℓ
        rw [← hm] at H
        refine setPostK_of H (by show t.memaddrs = _; rw [hd, hSU.md]) (by show t.be = _; rw [hb, hSU.b])
          (by show t.globals.lookup hpN = _; rw [hg, hSU.g]; exact hhp) (fun g _ => ?_)
        show t.globals.lookup g = _
        rw [hg, hSU.g]
    · obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hw0
      rw [ht, ev_lv_w heq] at hx; rw [ev_cw] at hy
      cases hx; cases hy
      simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hxy
  · intro r t _ hr _ h
    rcases h with h | h
    · exact absurd h.1 hr
    · exact h.2
  · rintro t ht (⟨-, rfl, rfl⟩ | ⟨h, -⟩) htr
    · have hdif := hdz _ _ _ rfl hKL rfl
      have e1' : (callEntryStateHOLFinite s callee).memory = s0.memory := hU.m
      have e2' : (callEntryStateHOLFinite s callee).memaddrs = s0.memaddrs := hU.md
      have e3' : (callEntryStateHOLFinite s callee).be = s0.be := hU.b
      rw [e1', e2', e3'] at hdif
      exact setC_hoare hC s0 hs hhp t hSU hℓ hw hdif t ht rfl htr
    · exact absurd rfl h

theorem funSpec_find_set (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_find_leaf") (fun vs s r t => (∀ T key,
      vs = [.val (.word T), .val (.word key)] →
      ∀ v, r = .returned (.val (.word v)) → Wk s T key (hdr s.memory T 56) v) ∧
      t.memory = s.memory ∧ t.be = s.be ∧ t.memaddrs = s.memaddrs ∧
      ∀ g, t.globals.lookup g = s.globals.lookup g) :=
  (funSpec_find_leaf hC).and ((funSpec_find_leaf_mw hC).and ((funSpec_be _).and ((funSpec_md _).and
    (funSpec_find_gw hC))))

/-- **The body of `htab_set`.** -/
theorem setBody_hoare (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ)
    {T key val H0 : BitVec 64} {L : BitVec 64 → Prop} {fl : List (BitVec 64)}
    (hT : DLk s0 "t" T) (hk : DLk s0 "key" key) (hv : DLk s0 "value" val)
    (hs : SetCtx s0.memory s0.memaddrs s0.be T key H0 L fl)
    (hhp : s0.globals.lookup hpN = some (.val (.word H0))) :
    Hoare σ X (fun t => t = s0) setBody (fun r u => ∀ v, r = some (.returned v) → SetPostK s0 u T val H0) := by
  refine hoare_dec fun u _ hu v1 hv1 _ => ?_
  have hu' : u = s0 := hu
  subst hu'
  have e : v1 = .val (.word (hdr u.memory T 0)) := ev_tLoad_w hT hv1
  subst e
  refine hoare_dec fun u1 _ hu1 v2 hv2 _ => ?_
  have hu1' : u1 = setVarHOLFinite (nm "klen") (.val (.word (hdr u.memory T 0))) u := hu1
  subst hu1'
  have e := ev_tLoad_w (dlk_set (x := "klen") (v := .val (.word (hdr u.memory T 0))) hT (by decide)) hv2
  have e' : v2 = .val (.word (hdr u.memory T 8)) := e
  subst e'
  refine hoare_decCallS (funSpec_find_set hC) fun s2 _ hs2 vs hvs callee v st hRf _ hshp => ?_
  have hs2' : s2 = setVarHOLFinite (nm "stride") (.val (.word (hdr u.memory T 8)))
      (setVarHOLFinite (nm "klen") (.val (.word (hdr u.memory T 0))) u) := hs2
  subst hs2'
  obtain ⟨hfind, hmst, hbst, hdst, hgst⟩ := hRf
  obtain ⟨va, vb, rfl, hva, hvb⟩ := evs_two_inv hvs
  rw [ev_lv_w (dlk_set (dlk_set hT (by decide)) (by decide))] at hva
  rw [ev_lv_w (dlk_set (dlk_set hk (by decide)) (by decide))] at hvb
  cases hva; cases hvb
  obtain ⟨ℓ, rfl⟩ := val_of_shapeEq_one' hshp
  have hw : WalkFrom u.memory u.memaddrs u.be T key (hdr u.memory T 56) ℓ := hfind T key rfl ℓ rfl
  -- `keys`
  refine hoare_dec fun u4 _ hu4 v4 hv4 _ => ?_
  have hu4' : u4 = setVarHOLFinite (nm "leaf") (.val (.word ℓ)) { st with locals :=
      (setVarHOLFinite (nm "stride") (.val (.word (hdr u.memory T 8)))
        (setVarHOLFinite (nm "klen") (.val (.word (hdr u.memory T 0))) u)).locals } := hu4
  subst hu4'
  have hT4 := dlk_set (x := "leaf") (v := .val (.word ℓ)) (u := { st with locals :=
      (setVarHOLFinite (nm "stride") (.val (.word (hdr u.memory T 8)))
        (setVarHOLFinite (nm "klen") (.val (.word (hdr u.memory T 0))) u)).locals })
    (dlk_set (dlk_set hT (by decide)) (by decide)) (by decide)
  have e : v4 = .val (.word (hdr u.memory T 32)) := by
    rw [ev_tLoad_w hT4 hv4]
    show ValueHOL.val (HolWordLab.word (rd st.memory _)) = _
    rw [hmst]; rfl
  subst e
  have hSU : SU u T key val ℓ (setVarHOLFinite (nm "keys") (.val (.word (hdr u.memory T 32)))
      (setVarHOLFinite (nm "leaf") (.val (.word ℓ)) { st with locals :=
        (setVarHOLFinite (nm "stride") (.val (.word (hdr u.memory T 8)))
          (setVarHOLFinite (nm "klen") (.val (.word (hdr u.memory T 0))) u)).locals })) := by
    refine ⟨hmst, hdst, hbst, hgst, ?_, ?_, ?_, ?_, ?_, ?_, dlk_self⟩
    · exact dlk_set hT4 (by decide)
    · exact dlk_set (dlk_set (dlk_set (dlk_set hk (by decide)) (by decide)) (by decide)) (by decide)
    · exact dlk_set (dlk_set (dlk_set (dlk_set hv (by decide)) (by decide)) (by decide)) (by decide)
    · exact dlk_set (dlk_set (dlk_set dlk_self (by decide)) (by decide)) (by decide)
    · exact dlk_set (dlk_set dlk_self (by decide)) (by decide)
    · exact dlk_set dlk_self (by decide)
  generalize setVarHOLFinite (nm "keys") (.val (.word (hdr u.memory T 32)))
      (setVarHOLFinite (nm "leaf") (.val (.word ℓ)) { st with locals :=
        (setVarHOLFinite (nm "stride") (.val (.word (hdr u.memory T 8)))
          (setVarHOLFinite (nm "klen") (.val (.word (hdr u.memory T 0))) u)).locals }) = U at hSU ⊢
  refine hoare_seq (R := fun r t => (r = none ∧ t = U ∧ ℓ ≠ 0) ∨
      (r ≠ none ∧ ∀ v, r = some (.returned v) → SetPostK u t T val H0)) ?_ ?_ ?_
  · refine hoare_ite ?_ (hoare_skip fun t _ ⟨ht, hw0⟩ => Or.inl ⟨rfl, ht, ?_⟩)
    · rintro t ht ⟨ht0, w, hw', hw0⟩ htr
      have hℓ0 : ℓ = BitVec.ofNat 64 0 := cmp_eq_true (ev_lv_w (ht0 ▸ hSU.lf)) (ev_cw t 0) hw' hw0
      subst hℓ0
      exact Or.inr (setA_hoare hC u hs hhp U hSU hw t ht ht0 htr)
    · exact cmp_eq_false (ev_lv_w (ht ▸ hSU.lf)) (ev_cw _ 0) hw0
  · intro r t _ hr _ h
    rcases h with h | h
    · exact absurd h.1 hr
    · exact h.2
  · rintro t ht (⟨-, rfl, hℓ⟩ | ⟨h, -⟩) htr
    · exact setB_hoare hC u hs hhp t hSU hℓ hw t ht rfl htr
    · exact absurd rfl h

end hoare

section spec
variable {σ : Type} {X : Ctx 64}

/-- **`htab_set` with a key of `key_len` bytes** (interface rev. 6): the bytes
`[key, key + key_len)` lie outside the table's region and the free heap; on return the table is
well formed (`SetPost`) and `key_len` is kept. -/
def SetSpecK (σ : Type) (X : Ctx 64) : Prop :=
  FunSpec σ X (nm "htab_set") (fun vs s r u => ∀ T key val H0 : BitVec 64,
    vs = [.val (.word T), .val (.word key), .val (.word val)] → TableWF s T →
    s.globals.lookup hpN = some (.val (.word H0)) → H0.toNat ≤ heapEnd → H0.toNat % 8 = 0 →
    (∀ a, TableRegion s.memory T a → ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd)) →
    key.toNat + (hdr s.memory T 0).toNat ≤ 2 ^ 64 →
    (∀ a : BitVec 64, key.toNat ≤ a.toNat → a.toNat < key.toNat + (hdr s.memory T 0).toNat →
      ¬ TableRegion s.memory T a ∧ ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd)) →
    ∀ v, r = .returned v → SetPostK s u T val H0)

theorem setSpecK (hC : X.code.lookup = guestCode) : SetSpecK σ X := by
  intro vs body callee rs hl s hs hloc r hr T key val H0 hvs hwf hhp h0 h8 hdisj hkw hkout v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, hABC, -, -, -, hA, hB, hC'⟩ :=
    lookupCode_three_full code_htab_set (by decide) (by decide) (by decide) hl
  rw [hvs] at hABC
  simp only [List.cons.injEq, and_true] at hABC
  obtain ⟨rfl, rfl, rfl⟩ := hABC
  have hT : DLk s "t" T := by unfold DLk; rw [hloc]; exact hA
  have hk : DLk s "key" key := by unfold DLk; rw [hloc]; exact hB
  have hv' : DLk s "value" val := by unfold DLk; rw [hloc]; exact hC'
  obtain ⟨hsep, L, hsh, hex⟩ := hwf
  obtain ⟨fl, hch, hnd, hfel, hacc⟩ := hex.free
  have hsc : SetCtx s.memory s.memaddrs s.be T key H0 L fl :=
    ⟨hsep, hsh, hex, hch, hnd, hfel, hacc, h0, h8, hdisj, hkw, hkout⟩
  have H := setBody_hoare (X := X) hC s hT hk hv' hsc hhp s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  exact H _ rfl

/-- **`htab_set` keeps the table well formed** (`SetSpec`). -/
theorem setSpec (hC : X.code.lookup = guestCode) : SetSpec σ X := by
  intro vs body callee rs hl s hs hloc r hr T key val H0 hvs hwf hhp h0 h8 hdisj hkw hkout v hv
  exact (setSpecK hC vs body callee rs hl s hs hloc r hr T key val H0 hvs hwf hhp h0 h8 hdisj hkw
    (fun a h1 h2 => hkout a h1 (by omega)) v hv).1

end spec


end InitECandidate.Solver.Spec.Inv
