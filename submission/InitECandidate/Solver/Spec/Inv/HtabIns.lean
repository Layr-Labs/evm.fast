import InitECandidate.Solver.Spec.Inv.HtabInsWalk

/-!
# Insertion keeps the table well formed (pure part)

`ins_wf`: from a well-formed entry table (`Shape`, `Extra` with free list `fl`), the view `InsV`
of the final memory and the search facts `InsCtx`, the final memory satisfies `Shape` and `Extra`
over the live set `L ∪ {nl, ni}`, the count went up by one, and the only new leaf value is `val`.

The subtree relation of the new table is classified by `ins_anc`: below an old node it is the old
subtree, plus `{ni, nl}` when the node is a proper ancestor of `n`; below `ni` it is `{ni, nl}`
plus the old subtree of `n`. The prefix property then follows from the old one, `D < KIND n` and
the bit indices below `D` of the proper ancestors of `n`.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

section ins
variable {m0 m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
  {fl : List (BitVec 64)} {nl ni n p D val key ℓ : BitVec 64} {b : Bool}
variable (hsh : Shape m0 d be T L) (hv : InsV m0 m d be T fl nl ni n p D val key)
  (hc : InsCtx m0 d be T L nl ni n p D key ℓ b)
include hsh hv hc

theorem ins_cnt : CNT m T = CNT m0 T + 1 := by
  have h1 : (hdr m0 T 24).toNat ≤ CAP m0 T := hsh.cnt_le
  have h2 := hv.cap
  have h3 := hv.c32
  unfold CNT
  rw [hv.e24, BitVec.toNat_add, Nat.mod_eq_of_lt (by simp; omega)]
  simp

theorem ins_pn : p ≠ n := by
  rcases hc.pc with ⟨hp0, -⟩ | ⟨-, -, -, hlt, -, -⟩
  · rw [hp0]; exact Ne.symm (ins_n0 hsh hv hc)
  · intro e; rw [e] at hlt; have := hc.dlt; omega

/-- A child of a live internal node, in the new table. -/
theorem ins_kid {i c : BitVec 64} (h : L i) (hk : KIND m0 T i ≠ KB m0 T)
    (hcc : c = LEFT m0 T i ∨ c = RIGHT m0 T i) :
    (L (fixI n ni c) ∨ fixI n ni c = nl ∨ fixI n ni c = ni) ∧ PAR m T (fixI n ni c) = i ∧
      (KIND m T i).toNat < (KIND m T (fixI n ni c)).toNat := by
  obtain ⟨lL, lR, pL, pR, -, kL, kR⟩ := hsh.internal i h hk
  have lc : L c := by rcases hcc with rfl | rfl <;> assumption
  have pc' : PAR m0 T c = i := by rcases hcc with rfl | rfl <;> assumption
  have kc : (KIND m0 T i).toNat < (KIND m0 T c).toNat := by rcases hcc with rfl | rfl <;> assumption
  rw [ins_kind hsh hv hc h]
  by_cases hcn : c = n
  · subst hcn
    have hip := (ins_child_n hsh hv hc h hk (by rcases hcc with e | e <;> [exact Or.inl e.symm; exact Or.inr e.symm])).2
    rw [fixI_n, hv.niP, hv.niK, hip]
    refine ⟨Or.inr (Or.inr rfl), rfl, ?_⟩
    rcases hc.pc with ⟨hp0, -⟩ | ⟨-, -, -, hlt, -, -⟩
    · exact absurd (hip.trans hp0) (live_ne0 hsh h)
    · exact hlt
  · rw [fixI_ne hcn, hv.par c (ins_le hsh hv hc lc) (ins_nenl hsh hv hc lc) (ins_neni hsh hv hc lc),
      if_neg hcn, ins_kind hsh hv hc lc]
    exact ⟨Or.inl lc, pc', kc⟩

/-- **Shape of the new table.** -/
theorem ins_shape (hpth : Pth m0 d be T key D.toNat (hdr m0 T 56) p n)
    (hacc : 2 * CNT m0 T + fl.length ≤ NX m0 T) :
    Shape m d be T (fun i => L i ∨ i = nl ∨ i = ni) := by
  have hkb := ins_kb hsh hv hc
  have hcnt := ins_cnt hsh hv hc
  have hr := ins_root hsh hv hc
  have hn0 := ins_n0 hsh hv hc
  have hni0 := ins_ni0 hsh hv hc
  have hnl0 := ins_nl0 hsh hv hc
  have hr0 : hdr m0 T 56 ≠ 0 := live_ne0 hsh hc.rl
  have hDk : D ≠ KB m T := by rw [hkb]; exact ins_dkb hsh hv hc
  have hnlk : KIND m T nl = KB m T := by rw [hv.nlK, hkb]
  have hniLR := ins_niLR hsh hv hc
  have hnP : PAR m T n = ni := by
    rw [hv.par n (ins_le hsh hv hc hc.ln) (ins_nenl hsh hv hc hc.ln) (ins_neni hsh hv hc hc.ln), if_pos rfl]
  -- `p = 0` iff `n` is the root
  have hpr : p = 0 ↔ hdr m0 T 56 = n := by
    constructor
    · intro hp0
      rcases hc.pc with ⟨-, h⟩ | ⟨h, -⟩
      · exact h.symm
      · exact absurd hp0 h
    · intro h
      rcases hc.pc with ⟨h0, -⟩ | ⟨hp0, -, -, -, hpar, -⟩
      · exact h0
      · have := (hsh.root_live hr0).2; rw [h, hpar] at this; exact absurd this hp0
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · -- cnt_le
    rw [hcnt]
    obtain ⟨fl', -, -, -, -, hlen⟩ := hv.free
    have := hv.nxc
    have := hsh.cnt_le
    omega
  · -- live_range
    rintro i (h | h' | h')
    · exact ⟨(hsh.live_range i h).1, le_trans (hsh.live_range i h).2 hv.cap⟩
    · subst i
      exact ⟨hv.nl1, hv.nlc⟩
    · subst i
      exact ⟨hv.ni1, hv.nic⟩
  · -- root_empty
    intro h0; exfalso
    rw [hr] at h0
    unfold fixI at h0
    split at h0
    · exact hni0 h0
    · exact hr0 h0
  · -- root_live
    intro _
    rw [hr]
    by_cases hrn : hdr m0 T 56 = n
    · rw [hrn, fixI_n, hv.niP]; exact ⟨Or.inr (Or.inr rfl), hpr.mpr hrn⟩
    · rw [fixI_ne hrn, hv.par _ (ins_le hsh hv hc hc.rl) (ins_nenl hsh hv hc hc.rl)
        (ins_neni hsh hv hc hc.rl), if_neg hrn]
      exact ⟨Or.inl hc.rl, (hsh.root_live hr0).2⟩
  · -- internal
    rintro i (h | h' | h') hk
    · rw [ins_kind hsh hv hc h, hkb] at hk
      obtain ⟨-, -, -, -, hLR, -⟩ := hsh.internal i h hk
      have eL : LEFT m T i = fixI n ni (LEFT m0 T i) := ins_child hsh hv hc h hk true
      have eR : RIGHT m T i = fixI n ni (RIGHT m0 T i) := ins_child hsh hv hc h hk false
      obtain ⟨a1, a2, a3⟩ := ins_kid hsh hv hc h hk (Or.inl rfl)
      obtain ⟨b1, b2, b3⟩ := ins_kid hsh hv hc h hk (Or.inr rfl)
      rw [eL, eR]
      refine ⟨a1, b1, a2, b2, ?_, a3, b3⟩
      obtain ⟨lL, lR, -⟩ := hsh.internal i h hk
      unfold fixI
      split <;> split
      · rename_i h1 h2; exact absurd (h1.trans h2.symm) hLR
      · rename_i h1 h2; exact fun e => ins_neni hsh hv hc lR e.symm
      · rename_i h1 h2; exact fun e => ins_neni hsh hv hc lL e
      · exact hLR
    · subst i
      exact absurd hnlk hk
    · subst i
      rw [hv.niK]
      obtain ⟨e1, e2⟩ := hniLR
      rw [e1, e2]
      have hkn : (D).toNat < (KIND m T n).toNat := by rw [ins_kn hsh hv hc]; exact hc.dlt
      have hknl : (D).toNat < (KIND m T nl).toNat := by rw [hv.nlK]; exact hc.dkb
      have hnnl : n ≠ nl := ins_nenl hsh hv hc hc.ln
      cases b
      · exact ⟨Or.inl hc.ln, Or.inr (Or.inl rfl), hnP, hv.nlP, hnnl, hkn, hknl⟩
      · exact ⟨Or.inr (Or.inl rfl), Or.inl hc.ln, hv.nlP, hnP, Ne.symm hnnl, hknl, hkn⟩
  · -- parent
    rintro i (h | h' | h') hir
    · rw [hr] at hir
      by_cases hin : i = n
      · subst hin
        rw [hnP, hv.niK]
        refine ⟨Or.inr (Or.inr rfl), hDk, ?_⟩
        obtain ⟨e1, e2⟩ := hniLR
        rw [e1, e2]; cases b
        · exact Or.inl rfl
        · exact Or.inr rfl
      · have hi0 : i ≠ hdr m0 T 56 := by
          intro e
          by_cases hrn : hdr m0 T 56 = n
          · exact hin (e.trans hrn)
          · rw [fixI_ne hrn] at hir; exact hir e
        obtain ⟨lq, kq, hch⟩ := hsh.parent i h hi0
        rw [hv.par i (ins_le hsh hv hc h) (ins_nenl hsh hv hc h) (ins_neni hsh hv hc h), if_neg hin]
        refine ⟨Or.inl lq, by rw [ins_kind hsh hv hc lq, hkb]; exact kq, ?_⟩
        rw [show LEFT m T (PAR m0 T i) = child m T (PAR m0 T i) true from rfl,
          show RIGHT m T (PAR m0 T i) = child m T (PAR m0 T i) false from rfl,
          ins_child hsh hv hc lq kq, ins_child hsh hv hc lq kq]
        rcases hch with e | e
        · left; show fixI n ni (LEFT m0 T (PAR m0 T i)) = i; rw [e, fixI_ne hin]
        · right; show fixI n ni (RIGHT m0 T (PAR m0 T i)) = i; rw [e, fixI_ne hin]
    · subst i
      rw [hv.nlP, hv.niK]
      refine ⟨Or.inr (Or.inr rfl), hDk, ?_⟩
      obtain ⟨e1, e2⟩ := hniLR
      rw [e1, e2]; cases b
      · exact Or.inr rfl
      · exact Or.inl rfl
    · subst i
      rw [hr] at hir
      have hrn : hdr m0 T 56 ≠ n := fun e => by rw [e, fixI_n] at hir; exact hir rfl
      rcases hc.pc with ⟨-, e⟩ | ⟨hp0, lp, kp, -, -, hch⟩
      · exact absurd e.symm hrn
      rw [hv.niP]
      refine ⟨Or.inl lp, by rw [ins_kind hsh hv hc lp, hkb]; exact kp, ?_⟩
      rw [show LEFT m T p = child m T p true from rfl, show RIGHT m T p = child m T p false from rfl,
        ins_child hsh hv hc lp kp, ins_child hsh hv hc lp kp]
      rcases hch with e | e
      · left; show fixI n ni (LEFT m0 T p) = ni; rw [e, fixI_n]
      · right; show fixI n ni (RIGHT m0 T p) = ni; rw [e, fixI_n]
  · -- order_live
    intro j hj
    rw [hcnt] at hj
    by_cases hjc : j.toNat < CNT m0 T
    · rw [hv.ord j hjc]
      obtain ⟨ly, ky, ry⟩ := hsh.order_live j hjc
      refine ⟨Or.inl ly, by rw [ins_kind hsh hv hc ly, hkb]; exact ky, ?_⟩
      rw [hv.right _ (ins_le hsh hv hc ly) (ins_nenl hsh hv hc ly) (ins_neni hsh hv hc ly), if_neg, ry]
      rintro ⟨-, e, -⟩
      rcases hc.pc with ⟨hp0, -⟩ | ⟨-, -, kp, -⟩
      · exact live_ne0 hsh ly (e.trans hp0)
      · exact kp (e ▸ ky)
    · have hje : j = hdr m0 T 24 := BitVec.eq_of_toNat_eq (by unfold CNT at hjc hj; omega)
      subst hje
      rw [hv.ordn]
      exact ⟨Or.inr (Or.inl rfl), hnlk, hv.nlR⟩
  · -- leaf_ordered
    rintro i (h | h' | h') hk
    · rw [ins_kind hsh hv hc h, hkb] at hk
      obtain ⟨j, hj, ho⟩ := hsh.leaf_ordered i h hk
      exact ⟨j, by rw [hcnt]; omega, by rw [hv.ord j hj, ho]⟩
    · subst i
      exact ⟨hdr m0 T 24, by rw [hcnt]; unfold CNT; omega, hv.ordn⟩
    · subst i
      rw [hv.niK] at hk; exact absurd hk hDk
  · -- walk
    intro j hj
    rw [hcnt] at hj
    rw [hr]
    by_cases hjc : j.toNat < CNT m0 T
    · rw [hv.ord j hjc]
      obtain ⟨ly, ky, -⟩ := hsh.order_live j hjc
      exact ins_walk_old hsh hv hc (hv.kbits _ (ins_le hsh hv hc ly) (ins_nenl hsh hv hc ly))
        (fun ha => hc.under _ ha ly ky) (hsh.walk j hjc) (Or.inr hc.rl)
    · have hje : j = hdr m0 T 24 := BitVec.eq_of_toNat_eq (by unfold CNT at hjc hj; omega)
      subst hje
      rw [hv.ordn]
      refine ins_walk_new hsh hv hc hv.kbitn hpth nl ?_
      rw [fixI_n]
      refine ins_walk_ni hsh hv hc (c := b) (by rw [hv.kbitn _ hc.dkb]; exact hc.bk) ?_
      rw [if_pos rfl]
      exact .leaf hnl0 hnlk
  · -- kind_le
    rintro i (h | h' | h')
    · rw [ins_kind hsh hv hc h, hkb]; exact hsh.kind_le i h
    · subst i
      rw [hnlk]
    · subst i
      rw [hv.niK, hkb]; exact le_of_lt hc.dkb

/-- The subtrees of the new table. -/
theorem ins_anc {i x : BitVec 64} (h : Anc m T i x) :
    (L i → (Anc m0 T i x ∧ L x) ∨ ((x = ni ∨ x = nl) ∧ Anc m0 T i n ∧ i ≠ n)) ∧
    (i = ni → x = ni ∨ x = nl ∨ (Anc m0 T n x ∧ L x)) ∧ (i = nl → x = nl) := by
  have hkb := ins_kb hsh hv hc
  have hniLR := ins_niLR hsh hv hc
  induction h with
  | refl i => exact ⟨fun h => Or.inl ⟨.refl _, h⟩, fun e => Or.inl e, fun e => e⟩
  | left hk h' ih =>
      rename_i i x
      refine ⟨fun hi => ?_, fun e => ?_, fun e => ?_⟩
      · have hk0 : KIND m0 T i ≠ KB m0 T := by rw [← ins_kind hsh hv hc hi, ← hkb]; exact hk
        obtain ⟨lL, -, -, -, -, kL, -⟩ := hsh.internal i hi hk0
        have eL : LEFT m T i = fixI n ni (LEFT m0 T i) := ins_child hsh hv hc hi hk0 true
        have hin : ∀ c, Anc m0 T c n → c = LEFT m0 T i → i ≠ n := by
          rintro c hcn rfl rfl
          have := (anc_kind hsh hcn lL).1; omega
        by_cases hcn : LEFT m0 T i = n
        · rw [eL, hcn, fixI_n] at ih
          have ain : Anc m0 T i n := .left hk0 (by rw [hcn]; exact .refl _)
          have hin' : i ≠ n := hin _ (by rw [hcn]; exact .refl _) rfl
          rcases ih.2.1 rfl with e | e | ⟨a, lx⟩
          · exact Or.inr ⟨Or.inl e, ain, hin'⟩
          · exact Or.inr ⟨Or.inr e, ain, hin'⟩
          · exact Or.inl ⟨anc_trans hsh ain a, lx⟩
        · rw [eL, fixI_ne hcn] at ih
          rcases ih.1 lL with ⟨a, lx⟩ | ⟨e, a, -⟩
          · exact Or.inl ⟨.left hk0 a, lx⟩
          · exact Or.inr ⟨e, .left hk0 a, hin _ a rfl⟩
      · subst e
        rw [hniLR.1] at ih
        cases b
        · rcases ih.1 hc.ln with ⟨a, lx⟩ | ⟨e, -, -⟩
          · exact Or.inr (Or.inr ⟨a, lx⟩)
          · rcases e with e | e
            · exact Or.inl e
            · exact Or.inr (Or.inl e)
        · exact Or.inr (Or.inl (ih.2.2 rfl))
      · subst e; rw [hv.nlK, hkb] at hk; exact absurd rfl hk
  | right hk h' ih =>
      rename_i i x
      refine ⟨fun hi => ?_, fun e => ?_, fun e => ?_⟩
      · have hk0 : KIND m0 T i ≠ KB m0 T := by rw [← ins_kind hsh hv hc hi, ← hkb]; exact hk
        obtain ⟨-, lR, -, -, -, -, kR⟩ := hsh.internal i hi hk0
        have eR : RIGHT m T i = fixI n ni (RIGHT m0 T i) := ins_child hsh hv hc hi hk0 false
        have hin : ∀ c, Anc m0 T c n → c = RIGHT m0 T i → i ≠ n := by
          rintro c hcn rfl rfl
          have := (anc_kind hsh hcn lR).1; omega
        by_cases hcn : RIGHT m0 T i = n
        · rw [eR, hcn, fixI_n] at ih
          have ain : Anc m0 T i n := .right hk0 (by rw [hcn]; exact .refl _)
          have hin' : i ≠ n := hin _ (by rw [hcn]; exact .refl _) rfl
          rcases ih.2.1 rfl with e | e | ⟨a, lx⟩
          · exact Or.inr ⟨Or.inl e, ain, hin'⟩
          · exact Or.inr ⟨Or.inr e, ain, hin'⟩
          · exact Or.inl ⟨anc_trans hsh ain a, lx⟩
        · rw [eR, fixI_ne hcn] at ih
          rcases ih.1 lR with ⟨a, lx⟩ | ⟨e, a, -⟩
          · exact Or.inl ⟨.right hk0 a, lx⟩
          · exact Or.inr ⟨e, .right hk0 a, hin _ a rfl⟩
      · subst e
        rw [hniLR.2] at ih
        cases b
        · exact Or.inr (Or.inl (ih.2.2 rfl))
        · rcases ih.1 hc.ln with ⟨a, lx⟩ | ⟨e, -, -⟩
          · exact Or.inr (Or.inr ⟨a, lx⟩)
          · rcases e with e | e
            · exact Or.inl e
            · exact Or.inr (Or.inl e)
      · subst e; rw [hv.nlK, hkb] at hk; exact absurd rfl hk

/-- Below `ni`, every leaf agrees with `ℓ` below `D`. -/
theorem ins_pfx_ni (hex : Extra m0 d be T L) {x : BitVec 64} (hx : Anc m T ni x) (hkx : KIND m T x = KB m T)
    {c : BitVec 64} (hcD : c.toNat < D.toNat) :
    kbit m d be (keyPtr m T x) c = kbit m0 d be (keyPtr m0 T ℓ) c := by
  have hkb := ins_kb hsh hv hc
  have hcK : c.toNat < (KB m0 T).toNat := by have := hc.dkb; omega
  rcases (ins_anc hsh hv hc hx).2.1 rfl with e | e | ⟨a, lx⟩
  · subst e; rw [hv.niK, hkb] at hkx; exact absurd hkx (ins_dkb hsh hv hc)
  · subst e; rw [hv.kbitn c hcK]; exact hc.pre c hcD
  · have kx : KIND m0 T x = KB m0 T := by rw [← ins_kind hsh hv hc lx, ← hkb]; exact hkx
    rw [hv.kbits x (ins_le hsh hv hc lx) (ins_nenl hsh hv hc lx) c hcK]
    by_cases hkn : KIND m0 T n = KB m0 T
    · rw [anc_leaf a hkn, ← anc_leaf hc.aℓ hkn]
    · exact hex.pfx n hc.ln hkn x ℓ a hc.aℓ kx hc.kℓ c (by have := hc.dlt; omega)

/-- Below an old internal node, every leaf's bit below its index is an old leaf's bit. -/
theorem ins_pfx_rep {i x : BitVec 64} (hi : L i) (hk0 : KIND m0 T i ≠ KB m0 T) (hx : Anc m T i x)
    (hkx : KIND m T x = KB m T) {c : BitVec 64} (hcl : c.toNat < (KIND m0 T i).toNat) :
    ∃ z, Anc m0 T i z ∧ L z ∧ KIND m0 T z = KB m0 T ∧
      kbit m d be (keyPtr m T x) c = kbit m0 d be (keyPtr m0 T z) c := by
  have hkb := ins_kb hsh hv hc
  have hcK : c.toNat < (KB m0 T).toNat := by have := kind_lt_kb hsh hi hk0; omega
  rcases (ins_anc hsh hv hc hx).1 hi with ⟨a, lx⟩ | ⟨e, a, hin⟩
  · have kx : KIND m0 T x = KB m0 T := by rw [← ins_kind hsh hv hc lx, ← hkb]; exact hkx
    exact ⟨x, a, lx, kx, hv.kbits x (ins_le hsh hv hc lx) (ins_nenl hsh hv hc lx) c hcK⟩
  · rcases e with e | e
    · subst e; rw [hv.niK, hkb] at hkx; exact absurd hkx (ins_dkb hsh hv hc)
    · subst e
      have hlt := hc.anc_lt i hi a hin
      refine ⟨ℓ, anc_trans hsh a hc.aℓ, hc.lℓ, hc.kℓ, ?_⟩
      rw [hv.kbitn c hcK]; exact hc.pre c (by omega)

/-- **`Extra` of the new table.** -/
theorem ins_extra (hex : Extra m0 d be T L) (hnd : fl.Nodup)
    (hfel : ∀ x ∈ fl, 1 ≤ x.toNat ∧ x.toNat < NX m0 T ∧ ¬ L x) (hacc : 2 * CNT m0 T + fl.length ≤ NX m0 T) :
    Extra m d be T (fun i => L i ∨ i = nl ∨ i = ni) := by
  have hkb := ins_kb hsh hv hc
  have hcnt := ins_cnt hsh hv hc
  have hnx := hv.nx
  refine ⟨by have := hex.nx_pos; omega, hv.nxc, ?_, ?_, ?_, ?_⟩
  · rintro i (h | h' | h')
    · have := hex.live_lt i h; omega
    · subst i
      exact hv.nllt
    · subst i
      exact hv.nilt
  · obtain ⟨fl', hch, hsub, hnl, hni, hlen⟩ := hv.free
    have hcn := hex.nx_le
    refine ⟨fl', freeChain_congr hch fun x hx => ?_, hsub.nodup hnd, fun x hx => ?_, ?_⟩
    · obtain ⟨h1, h2, h3⟩ := hfel x (hsub.subset hx)
      have hxnl : x ≠ nl := fun e => hnl (e ▸ hx)
      have hxni : x ≠ ni := fun e => hni (e ▸ hx)
      have hxn : x ≠ n := fun e => h3 (e ▸ hc.ln)
      rw [hv.par x (by omega) hxnl hxni, if_neg hxn]
    · obtain ⟨h1, h2, h3⟩ := hfel x (hsub.subset hx)
      refine ⟨h1, by omega, ?_⟩
      rintro (h | rfl | rfl)
      · exact h3 h
      · exact hnl hx
      · exact hni hx
    · rw [hcnt]; omega
  · -- pfx
    rintro i (hi | hi' | hi') hk x y hx hy hkx hky c hcl
    · have hk0 : KIND m0 T i ≠ KB m0 T := by rw [← ins_kind hsh hv hc hi, ← hkb]; exact hk
      rw [ins_kind hsh hv hc hi] at hcl
      obtain ⟨z1, a1, l1, k1, e1⟩ := ins_pfx_rep hsh hv hc hi hk0 hx hkx hcl
      obtain ⟨z2, a2, l2, k2, e2⟩ := ins_pfx_rep hsh hv hc hi hk0 hy hky hcl
      rw [e1, e2]
      exact hex.pfx i hi hk0 z1 z2 a1 a2 k1 k2 c hcl
    · subst i
      rw [hv.nlK, hkb] at hk; exact absurd rfl hk
    · subst i
      rw [hv.niK] at hcl
      rw [ins_pfx_ni hsh hv hc hex hx hkx hcl, ins_pfx_ni hsh hv hc hex hy hky hcl]
  · exact ⟨by rw [hv.e8]; exact hex.bnd.1, le_trans hex.bnd.2.1 hv.cap, hv.c32⟩

/-- The only new leaf value is `val`. -/
theorem ins_leafval {w : BitVec 64} (h : LeafVal m T w) : LeafVal m0 T w ∨ w = val := by
  obtain ⟨j, hj, hw⟩ := h
  rw [ins_cnt hsh hv hc] at hj
  by_cases hjc : j.toNat < CNT m0 T
  · left
    refine ⟨j, hjc, ?_⟩
    rw [hv.ord j hjc] at hw
    obtain ⟨ly, ky, -⟩ := hsh.order_live j hjc
    rw [hv.left _ (ins_le hsh hv hc ly) (ins_nenl hsh hv hc ly) (ins_neni hsh hv hc ly), if_neg] at hw
    · exact hw
    rintro ⟨-, e, -⟩
    rcases hc.pc with ⟨hp0, -⟩ | ⟨-, -, kp, -⟩
    · exact live_ne0 hsh ly (e.trans hp0)
    · exact kp (e ▸ ky)
  · right
    have hje : j = hdr m0 T 24 := BitVec.eq_of_toNat_eq (by unfold CNT at hjc hj; omega)
    subst hje
    rw [hv.ordn, hv.nlL] at hw
    exact hw.symm

end ins

end InitECandidate.Solver.Spec.Inv
