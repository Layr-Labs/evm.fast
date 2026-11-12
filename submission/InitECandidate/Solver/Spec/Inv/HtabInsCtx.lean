import InitECandidate.Solver.Spec.Inv.HtabTree

/-!
# Insertion: the final table as a view of the entry table

`InsV m0 m … nl ni n p D val key`: the memory `m` after `htab_set`'s insertion branch, described
field by field relative to the entry memory `m0`. A new internal node `ni` (bit `D`) is spliced
between `p` (`0` at the root) and `n`; its other child is the new leaf `nl` (value `val`, key
bits of `key`, ordinal `count`). Old nodes keep their fields except `PAR n = ni` and `p`'s child
`n` replaced by `ni`. Allocation: `nl`, `ni` came from the free list `fl` or from `next`.

`InsCtx`: the tree facts the search loop establishes (the path `Pth` from the root to `n`, the
found leaf `ℓ` under `n`, the first differing bit `D` with `D ≤ KIND n`), and `ins_ctx` derives
the facts the invariant proof uses, among them `D < KIND n` strictly (`ins_dlt`) and that every
live proper ancestor of `n` has a bit index below `D` (`ins_anc_lt`).
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The final memory of the insertion branch, relative to the entry memory. -/
structure InsV (m0 m : Mem) (d : BitVec 64 → Prop) (be : Bool) (T : BitVec 64) (fl : List (BitVec 64))
    (nl ni n p D val key : BitVec 64) : Prop where
  sep : Sep m T
  cap : CAP m0 T ≤ CAP m T
  c32 : CAP m T ≤ 2 ^ 32
  e0 : hdr m T 0 = hdr m0 T 0
  e8 : hdr m T 8 = hdr m0 T 8
  e24 : hdr m T 24 = hdr m0 T 24 + BitVec.ofNat 64 1
  e56 : hdr m T 56 = if p = 0 then ni else hdr m0 T 56
  nl1 : 1 ≤ nl.toNat
  nlc : nl.toNat ≤ CAP m T
  ni1 : 1 ≤ ni.toNat
  nic : ni.toNat ≤ CAP m T
  nlni : nl ≠ ni
  kind : ∀ i : BitVec 64, i.toNat ≤ CAP m0 T → i ≠ nl → i ≠ ni → KIND m T i = KIND m0 T i
  par : ∀ i : BitVec 64, i.toNat ≤ CAP m0 T → i ≠ nl → i ≠ ni →
    PAR m T i = if i = n then ni else PAR m0 T i
  left : ∀ i : BitVec 64, i.toNat ≤ CAP m0 T → i ≠ nl → i ≠ ni →
    LEFT m T i = if p ≠ 0 ∧ i = p ∧ LEFT m0 T p = n then ni else LEFT m0 T i
  right : ∀ i : BitVec 64, i.toNat ≤ CAP m0 T → i ≠ nl → i ≠ ni →
    RIGHT m T i = if p ≠ 0 ∧ i = p ∧ LEFT m0 T p ≠ n then ni else RIGHT m0 T i
  nlP : PAR m T nl = ni
  nlL : LEFT m T nl = val
  nlR : RIGHT m T nl = hdr m0 T 24
  nlK : KIND m T nl = KB m0 T
  niP : PAR m T ni = p
  niK : KIND m T ni = D
  niLR : ∃ b : Bool, kbit m0 d be key D = some b ∧ LEFT m T ni = (if b then nl else n) ∧
    RIGHT m T ni = (if b then n else nl)
  ord : ∀ j : BitVec 64, j.toNat < CNT m0 T → ORD m T j = ORD m0 T j
  ordn : ORD m T (hdr m0 T 24) = nl
  kbits : ∀ i : BitVec 64, i.toNat ≤ CAP m0 T → i ≠ nl → ∀ c : BitVec 64, c.toNat < (KB m0 T).toNat →
    kbit m d be (keyPtr m T i) c = kbit m0 d be (keyPtr m0 T i) c
  kbitn : ∀ c : BitVec 64, c.toNat < (KB m0 T).toNat → kbit m d be (keyPtr m T nl) c = kbit m0 d be key c
  nx : NX m0 T ≤ NX m T
  nxc : NX m T ≤ CAP m T + 1
  nllt : nl.toNat < NX m T
  nilt : ni.toNat < NX m T
  nlfree : nl ∈ fl ∨ NX m0 T ≤ nl.toNat
  nifree : ni ∈ fl ∨ NX m0 T ≤ ni.toNat
  free : ∃ fl' : List (BitVec 64), FreeChain m0 T (hdr m T 72) fl' ∧ fl'.Sublist fl ∧ nl ∉ fl' ∧ ni ∉ fl' ∧
    fl'.length + 2 + NX m0 T ≤ fl.length + NX m T

/-- The node replacing `n` on walks: the new internal node. -/
def fixI (n ni x : BitVec 64) : BitVec 64 := if x = n then ni else x

theorem anc_leaf {m : Mem} {T a x : BitVec 64} (h : Anc m T a x) (hk : KIND m T a = KB m T) : x = a := by
  cases h with
  | refl => rfl
  | left hk' _ => exact absurd hk hk'
  | right hk' _ => exact absurd hk hk'

/-- The derived facts of the insertion. -/
structure InsCtx (m0 : Mem) (d : BitVec 64 → Prop) (be : Bool) (T : BitVec 64) (L : BitVec 64 → Prop)
    (nl ni n p D key ℓ : BitVec 64) (b : Bool) : Prop where
  rl : L (hdr m0 T 56)
  an : Anc m0 T (hdr m0 T 56) n
  ln : L n
  pc : (p = 0 ∧ n = hdr m0 T 56) ∨ (p ≠ 0 ∧ L p ∧ KIND m0 T p ≠ KB m0 T ∧ (KIND m0 T p).toNat < D.toNat ∧
    PAR m0 T n = p ∧ (LEFT m0 T p = n ∨ RIGHT m0 T p = n))
  aℓ : Anc m0 T n ℓ
  lℓ : L ℓ
  kℓ : KIND m0 T ℓ = KB m0 T
  nll : ¬ L nl
  nil : ¬ L ni
  dkb : D.toNat < (KB m0 T).toNat
  dlt : D.toNat < (KIND m0 T n).toNat
  anc_lt : ∀ i, L i → Anc m0 T i n → i ≠ n → (KIND m0 T i).toNat < D.toNat
  bk : kbit m0 d be key D = some b
  under : ∀ y, Anc m0 T n y → L y → KIND m0 T y = KB m0 T → kbit m0 d be (keyPtr m0 T y) D = some (!b)
  pre : ∀ c : BitVec 64, c.toNat < D.toNat → kbit m0 d be key c = kbit m0 d be (keyPtr m0 T ℓ) c

section ctx
variable {m0 : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64} {L : BitVec 64 → Prop}
  {fl : List (BitVec 64)} {nl ni n p D key ℓ : BitVec 64}

/-- **The search loop's facts give the insertion context.** -/
theorem ins_ctx (hsh : Shape m0 d be T L) (hex : Extra m0 d be T L)
    (hfel : ∀ x ∈ fl, 1 ≤ x.toNat ∧ x.toNat < NX m0 T ∧ ¬ L x)
    (hnlf : nl ∈ fl ∨ NX m0 T ≤ nl.toNat) (hnif : ni ∈ fl ∨ NX m0 T ≤ ni.toNat)
    (hr0 : hdr m0 T 56 ≠ 0)
    (hpth : Pth m0 d be T key D.toNat (hdr m0 T 56) p n) (hwn : WalkFrom m0 d be T key n ℓ)
    (hD : D.toNat < (KB m0 T).toNat) (hDn : D.toNat ≤ (KIND m0 T n).toNat)
    (hpre : ∀ c : BitVec 64, c.toNat < D.toNat → kbit m0 d be key c = kbit m0 d be (keyPtr m0 T ℓ) c)
    {b b' : Bool} (hb : kbit m0 d be key D = some b) (hb' : kbit m0 d be (keyPtr m0 T ℓ) D = some b')
    (hbb : b ≠ b') :
    InsCtx m0 d be T L nl ni n p D key ℓ b := by
  have rl : L (hdr m0 T 56) := (hsh.root_live hr0).1
  obtain ⟨ln, an, hpc⟩ := pth_live hsh hpth rl
  obtain ⟨aℓ, lℓ, kℓ⟩ := walk_anc hsh hwn ln
  have hb'' : b' = !b := by cases b <;> cases b' <;> simp_all
  subst hb''
  have nll : ¬ L nl := fun h => by
    rcases hnlf with h1 | h1
    · exact (hfel _ h1).2.2 h
    · have := hex.live_lt _ h; omega
  have nil : ¬ L ni := fun h => by
    rcases hnif with h1 | h1
    · exact (hfel _ h1).2.2 h
    · have := hex.live_lt _ h; omega
  -- the predecessor
  have pc : (p = 0 ∧ n = hdr m0 T 56) ∨ (p ≠ 0 ∧ L p ∧ KIND m0 T p ≠ KB m0 T ∧
      (KIND m0 T p).toNat < D.toNat ∧ PAR m0 T n = p ∧ (LEFT m0 T p = n ∨ RIGHT m0 T p = n)) := by
    rcases hpc with h | ⟨lp, kp, hlt, hpar, -, b0, -, e⟩
    · exact Or.inl h
    · refine Or.inr ⟨live_ne0 hsh lp, lp, kp, hlt, hpar, ?_⟩
      rw [e]; cases b0
      · exact Or.inr rfl
      · exact Or.inl rfl
  -- `D < KIND n`
  have dlt : D.toNat < (KIND m0 T n).toNat := by
    rcases Nat.lt_or_eq_of_le hDn with h | h
    · exact h
    exfalso
    have hDe : KIND m0 T n = D := BitVec.eq_of_toNat_eq h.symm
    have hkn : KIND m0 T n ≠ KB m0 T := fun e => by rw [← hDe, e] at hD; omega
    have hn0 := live_ne0 hsh ln
    -- the search key leaves `n` on bit `b`
    have w1 := walk_step hsh hwn hn0 hkn (by rw [hDe]; exact hb)
    -- `ℓ`'s own key reaches `n`, then leaves on bit `!b`
    obtain ⟨j, hj, hjo⟩ := hsh.leaf_ordered ℓ lℓ kℓ
    have hwℓ := hsh.walk j hj
    rw [hjo] at hwℓ
    have hpℓ := pth_transfer hpth hpre
    have w2 := walk_step hsh (pth_walk hpℓ hwℓ) hn0 hkn (by rw [hDe]; exact hb')
    obtain ⟨lL, lR, -⟩ := hsh.internal _ ln hkn
    cases b
    · have a1 := (walk_anc hsh w1 lR).1
      have a2 := (walk_anc hsh w2 lL).1
      exact sib_disj hsh ln hkn a2 a1
    · have a1 := (walk_anc hsh w1 lL).1
      have a2 := (walk_anc hsh w2 lR).1
      exact sib_disj hsh ln hkn a1 a2
  refine ⟨rl, an, ln, pc, aℓ, lℓ, kℓ, nll, nil, hD, dlt, fun i li ai hin => ?_, hb, fun y ay ly ky => ?_, hpre⟩
  · obtain ⟨a1, l1, -, -⟩ := anc_up hsh ai li (Ne.symm hin)
    rcases pc with ⟨-, hnr⟩ | ⟨-, -, -, hlt, hpar, -⟩
    · rw [hnr, (hsh.root_live hr0).2] at l1
      exact absurd rfl (live_ne0 hsh l1)
    · rw [hpar] at a1
      have := (anc_kind hsh a1 li).1
      omega
  · by_cases hkn : KIND m0 T n = KB m0 T
    · have e1 := anc_leaf ay hkn
      have e2 := anc_leaf aℓ hkn
      rw [e1, ← e2]; exact hb'
    · rw [hex.pfx n ln hkn y ℓ ay aℓ ky kℓ D dlt]; exact hb'

end ctx

end InitECandidate.Solver.Spec.Inv
