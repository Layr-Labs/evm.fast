import InitECandidate.Solver.Spec.Inv.HtabIns
import InitECandidate.Solver.Spec.Inv.HtabNewLeafView

/-!
# Insertion: the store chain gives the view `InsV`

`insMem mI … c` is the raw memory of `htab_set`'s splice stores (read off the code) on the memory
`mI` after `htab_new_internal`. `ins_view` composes `htab_new_leaf`'s `NLPost`, `htab_new_node`'s
`NNPost` (the second allocation) with `fill4` and the six stores into `InsV` relative to the entry
memory, together with the heap and modifies/region clauses over both allocations.

`Ag m m' E EH`: `m'` agrees with `m` on every view the invariant reads except the node fields in
`E` and the header cells in `EH`, keeps the layout and separation, and modifies only the table's
region. It composes (`Ag.trans`) and every kind of store produces one.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## The raw memory of the splice -/

section raw
variable (mI : Mem) (T nl ni n p : BitVec 64)

/-- After `st ni.PAR p; st nl.PAR ni; st n.PAR ni` (`nodes` reloaded from `mI`). -/
def insM3 : Mem :=
  upd (upd (upd mI (na (hdr mI T 40) ni 0) p) (na (hdr mI T 40) nl 0) ni) (na (hdr mI T 40) n 0) ni

/-- After `ni`'s two children (`c`: the search key's bit at `d` is `0`). -/
def insM5 (c : Bool) : Mem :=
  if c then upd (upd (insM3 mI T nl ni n p) (na (hdr mI T 40) ni 8) nl) (na (hdr mI T 40) ni 16) n
  else upd (upd (insM3 mI T nl ni n p) (na (hdr mI T 40) ni 8) n) (na (hdr mI T 40) ni 16) nl

/-- **The memory after the splice.** -/
def insMem (c : Bool) : Mem :=
  if p = 0 then upd (insM5 mI T nl ni n p c) (T + BitVec.ofNat 64 56) ni
  else if rd (insM5 mI T nl ni n p c) (na (hdr mI T 40) p 8) = n then
    upd (insM5 mI T nl ni n p c) (na (hdr mI T 40) p 8) ni
  else upd (insM5 mI T nl ni n p c) (na (hdr mI T 40) p 16) ni

end raw

/-! ## Agreement -/

/-- `m'` agrees with `m` except node fields `E` and header cells `EH`. -/
structure Ag (m m' : Mem) (d : BitVec 64 → Prop) (be : Bool) (T : BitVec 64)
    (E : BitVec 64 → Nat → Prop) (EH : Nat → Prop) : Prop where
  hd : ∀ k, k < 88 → ¬ EH k → hdr m' T k = hdr m T k
  l8 : hdr m' T 8 = hdr m T 8
  l32 : hdr m' T 32 = hdr m T 32
  l40 : hdr m' T 40 = hdr m T 40
  l48 : hdr m' T 48 = hdr m T 48
  l80 : hdr m' T 80 = hdr m T 80
  node : ∀ i : BitVec 64, i.toNat ≤ CAP m T → ∀ off : Nat, off < 32 → ¬ E i off →
    nodeF m' T i off = nodeF m T i off
  ord : ∀ j : BitVec 64, j.toNat ≤ CAP m T → ORD m' T j = ORD m T j
  key : ∀ i : BitVec 64, i.toNat ≤ CAP m T → ∀ o : Nat, o < (hdr m T 8).toNat →
    kbyte m' d be (keyPtr m' T i + BitVec.ofNat 64 o) = kbyte m d be (keyPtr m T i + BitVec.ofNat 64 o)
  sep : Sep m' T
  modif : ModifiesOnly (TableRegion m T) m m'

section ag
variable {m m' m'' : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64}
  {E E' : BitVec 64 → Nat → Prop} {EH EH' : Nat → Prop}

theorem Ag.cap (h : Ag m m' d be T E EH) : CAP m' T = CAP m T := by unfold CAP; rw [h.l80]

theorem Ag.reg (h : Ag m m' d be T E EH) : TableRegion m' T = TableRegion m T :=
  tableRegion_congr h.l8 h.l32 h.l40 h.l48 h.l80

theorem Ag.trans (h : Ag m m' d be T E EH) (h' : Ag m' m'' d be T E' EH') :
    Ag m m'' d be T (fun i o => E i o ∨ E' i o) (fun k => EH k ∨ EH' k) := by
  have hc := h.cap
  refine ⟨fun k hk hn => ?_, h'.l8.trans h.l8, h'.l32.trans h.l32, h'.l40.trans h.l40, h'.l48.trans h.l48,
    h'.l80.trans h.l80, fun i hi off ho hn => ?_, fun j hj => ?_, fun i hi o ho => ?_, h'.sep, ?_⟩
  · rw [h'.hd k hk (fun e => hn (Or.inr e)), h.hd k hk (fun e => hn (Or.inl e))]
  · rw [h'.node i (by rw [hc]; exact hi) off ho (fun e => hn (Or.inr e)),
      h.node i hi off ho (fun e => hn (Or.inl e))]
  · rw [h'.ord j (by rw [hc]; exact hj), h.ord j hj]
  · rw [h'.key i (by rw [hc]; exact hi) o (by rw [h.l8]; exact ho), h.key i hi o ho]
  · exact h.modif.trans (by rw [← h.reg]; exact h'.modif)

theorem Ag.mono (h : Ag m m' d be T E EH) (hE : ∀ i o, E i o → E' i o) (hEH : ∀ k, EH k → EH' k) :
    Ag m m' d be T E' EH' :=
  ⟨fun k hk hn => h.hd k hk (fun e => hn (hEH k e)), h.l8, h.l32, h.l40, h.l48, h.l80,
    fun i hi off ho hn => h.node i hi off ho (fun e => hn (hE i off e)), h.ord, h.key, h.sep, h.modif⟩

/-- A node store. -/
theorem ag_node (hs : Sep m T) {N n : BitVec 64} (hN : hdr m T 40 = N) (hn : n.toNat ≤ CAP m T) {off : Nat}
    (ho : off < 32) (x : BitVec 64) :
    Ag m (upd m (na N n off) x) d be T (fun i o => i = n ∧ o = off) (fun _ => False) ∧
      nodeF (upd m (na N n off) x) T n off = x := by
  subst hN
  obtain ⟨hh, hnd, hself, hord, hkey, hsep, -, -, hmod⟩ := node_store_kit (d := d) (be := be) hs hn ho x
  refine ⟨⟨fun k hk _ => hh k hk, hh 8 (by decide), hh 32 (by decide), hh 40 (by decide), hh 48 (by decide),
    hh 80 (by decide), fun i hi off' ho' hne => hnd i hi off' ho' ?_, hord, hkey, hsep, hmod⟩, hself⟩
  by_cases e : i = n
  · exact Or.inr (fun e' => hne ⟨e, e'⟩)
  · exact Or.inl e

/-- The root store. -/
theorem ag_root (hs : Sep m T) (x : BitVec 64) :
    Ag m (upd m (T + BitVec.ofNat 64 56) x) d be T (fun _ _ => False) (fun k => k = 56) ∧
      hdr (upd m (T + BitVec.ofNat 64 56) x) T 56 = x := by
  obtain ⟨hself, hh, hnd, hord, hkey, hsep, -, -, hmod⟩ := hdr_store_kit (d := d) (be := be) hs (k := 56)
    (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) x
  exact ⟨⟨fun k hk hne => hh k hk hne, hh 8 (by decide) (by decide), hh 32 (by decide) (by decide),
    hh 40 (by decide) (by decide), hh 48 (by decide) (by decide), hh 80 (by decide) (by decide),
    fun i hi off ho _ => hnd i hi off ho, hord, hkey, hsep, hmod⟩, hself⟩

/-- Filling a node. -/
theorem ag_fill4 (hs : Sep m T) {n : BitVec 64} (hn : n.toNat ≤ CAP m T) (a b c e : BitVec 64) :
    Ag m (fill4 m (hdr m T 40) n a b c e) d be T (fun i _ => i = n) (fun _ => False) := by
  have hl := lay_of_sep hs
  obtain ⟨hsep, -, hh, hnd, -, -, -, -, hord, hkey, hx⟩ := fill4_facts (d := d) (be := be) hs hn a b c e
  exact ⟨fun k hk _ => hh k hk, hh 8 (by decide), hh 32 (by decide), hh 40 (by decide), hh 48 (by decide),
    hh 80 (by decide), fun i hi off ho hne => hnd i hi hne off ho, hord, hkey, hsep, fun x hx' =>
      hx x (outNa hl hx' hn (by decide)) (outNa hl hx' hn (by decide)) (outNa hl hx' hn (by decide))
        (outNa hl hx' hn (by decide))⟩

end ag

/-- Key bits from key bytes. -/
theorem kbit_of_bytes {m m' : Mem} {d : BitVec 64 → Prop} {be : Bool} {K K' : BitVec 64} {KL : Nat}
    (h : ∀ o : Nat, o < KL → kbyte m' d be (K' + BitVec.ofNat 64 o) = kbyte m d be (K + BitVec.ofNat 64 o))
    {c : BitVec 64} (hc : c.toNat < 8 * KL) : kbit m' d be K' c = kbit m d be K c := by
  rw [kbit_eq, kbit_eq, h _ (by omega)]

theorem kb_toNat {m : Mem} {T : BitVec 64} (h : (hdr m T 0).toNat ≤ 2 ^ 20) :
    (KB m T).toNat = 8 * (hdr m T 0).toNat := by
  unfold KB; rw [BitVec.toNat_mul, BitVec.toNat_ofNat]; omega

/-! ## The view -/

section view
variable {m0 mL mN : Mem} {d : BitVec 64 → Prop} {be : Bool} {T key val H0 H1 H2 nl ni n p dv : BitVec 64}
  {fl : List (BitVec 64)} {c : Bool}

/-- The two allocations of the splice: `nl`, `ni` distinct, below `next`, from the free list or
fresh, and the free list afterwards is `fl.tail.tail`. -/
theorem ins_alloc (hch : FreeChain m0 T (hdr m0 T 72) fl) (hnd : fl.Nodup)
    (hflr : ∀ x ∈ fl, 1 ≤ x.toNat ∧ x.toNat < NX m0 T) (hnxc0 : NX m0 T ≤ CAP m0 T + 1)
    (hL : NLPost m0 mL d be T fl H0 H1 nl key val) (hN : NNPost mL mN d be T fl.tail H1 H2 ni) :
    nl ≠ ni ∧ nl.toNat < NX mN T ∧ ni.toNat < NX mN T ∧ NX m0 T ≤ NX mN T ∧
    (nl ∈ fl ∨ NX m0 T ≤ nl.toNat) ∧ (ni ∈ fl ∨ NX m0 T ≤ ni.toNat) ∧
    FreeChain m0 T (hdr mN T 72) fl.tail.tail ∧ nl ∉ fl.tail.tail ∧ ni ∉ fl.tail.tail ∧
    fl.tail.tail.length + 2 + NX m0 T ≤ fl.length + NX mN T ∧ (ni ∈ fl → ni.toNat ≤ CAP m0 T) := by
  have hniC : ni ∈ fl → ni.toNat ≤ CAP m0 T := fun h => by have := hflr ni h; omega
  rcases hL.alloc with ⟨xs, hfl, h72, hX⟩ | ⟨hfl, hnl, hX, h72⟩
  · subst hfl
    have hnlr := hflr nl (List.mem_cons_self ..)
    obtain ⟨hnlxs, hndxs⟩ := List.nodup_cons.mp hnd
    have hch' : FreeChain m0 T (PAR m0 T nl) xs := hch.2
    rcases hN.alloc with ⟨ys, hys, g72, gX⟩ | ⟨hxs, hni, gX, g72⟩
    · simp only [List.tail_cons] at hys
      subst hys
      have hnir := hflr ni (List.mem_cons_of_mem _ (List.mem_cons_self ..))
      obtain ⟨hniys, -⟩ := List.nodup_cons.mp hndxs
      have hnl_ni : nl ≠ ni := fun e => hnlxs (e ▸ List.mem_cons_self ..)
      have hp : PAR mL T ni = PAR m0 T ni :=
        hL.node ni (by omega) (Ne.symm hnl_ni) 0 (by decide) (by decide)
      simp only [List.tail_cons]
      refine ⟨hnl_ni, by omega, by omega, by omega, Or.inl (List.mem_cons_self ..),
        Or.inl (List.mem_cons_of_mem _ (List.mem_cons_self ..)), ?_, fun h => hnlxs (List.mem_cons_of_mem _ h),
        hniys, by simp only [List.length_cons]; omega, hniC⟩
      rw [g72, hp]
      exact hch'.2
    · simp only [List.tail_cons] at hxs
      subst hxs
      refine ⟨fun e => by have := congrArg BitVec.toNat e; omega, by omega, by omega, by omega,
        Or.inl (List.mem_cons_self ..), Or.inr (by omega), by simp only [List.tail_cons, List.tail_nil]; rw [g72]; rfl,
        by simp, by simp, by simp only [List.tail_cons, List.tail_nil, List.length_nil, List.length_cons]; omega,
        hniC⟩
  · subst hfl
    rcases hN.alloc with ⟨ys, hys, -, -⟩ | ⟨-, hni, gX, g72⟩
    · simp at hys
    · refine ⟨fun e => by have := congrArg BitVec.toNat e; omega, by omega, by omega, by omega, Or.inr (by omega),
        Or.inr (by omega), by simp only [List.tail_nil]; rw [g72]; rfl, by simp, by simp,
        by simp only [List.tail_nil, List.length_nil]; omega, hniC⟩

/-- **The store chain gives `InsV`.** -/
theorem ins_view (hsep : Sep m0 T) (hS20 : (hdr m0 T 8).toNat ≤ 2 ^ 20) (hcnt : CNT m0 T ≤ CAP m0 T)
    (hch : FreeChain m0 T (hdr m0 T 72) fl) (hnd : fl.Nodup)
    (hflr : ∀ x ∈ fl, 1 ≤ x.toNat ∧ x.toNat < NX m0 T) (hnxc0 : NX m0 T ≤ CAP m0 T + 1)
    (hH0 : H0.toNat % 8 = 0) (hkw : key.toNat + (hdr m0 T 0).toNat ≤ 2 ^ 64)
    (hkout : ∀ a : BitVec 64, key.toNat ≤ a.toNat → a.toNat < key.toNat + (hdr m0 T 0).toNat →
      ¬ TableRegion m0 T a ∧ ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd))
    (hL : NLPost m0 mL d be T fl H0 H1 nl key val) (hN : NNPost mL mN d be T fl.tail H1 H2 ni)
    (hn : n.toNat ≤ CAP m0 T) (hnnl : n ≠ nl) (hnni : n ≠ ni)
    (hp : p = 0 ∨ (p.toNat ≤ CAP m0 T ∧ p ≠ nl ∧ p ≠ ni ∧ p ≠ n))
    (hdv : dv.toNat < (KB m0 T).toNat)
    (hc : kbit (insM3 (fill4 mN (hdr mN T 40) ni 0 0 0 dv) T nl ni n p) d be key dv = some c) :
    InsV m0 (insMem (fill4 mN (hdr mN T 40) ni 0 0 0 dv) T nl ni n p c) d be T fl nl ni n p dv val key ∧
    H0.toNat ≤ H2.toNat ∧ H2.toNat ≤ heapEnd ∧ H2.toNat % 8 = 0 ∧
    ModifiesOnly (RegionOrFresh m0 T H0 H2) m0 (insMem (fill4 mN (hdr mN T 40) ni 0 0 0 dv) T nl ni n p c) ∧
    (∀ a, TableRegion (insMem (fill4 mN (hdr mN T 40) ni 0 0 0 dv) T nl ni n p c) T a →
      RegionOrFresh m0 T H0 H2 a) := by
  have hl0 := lay_of_sep hsep
  have hKL0 : (hdr m0 T 0).toNat ≤ (hdr m0 T 8).toNat := hl0.KL
  have hKB : (KB m0 T).toNat = 8 * (hdr m0 T 0).toNat := kb_toNat (by omega)
  have hcL := hL.cap
  have hcN := hN.cap
  have hK := hN.keep
  have hnlL := hL.nc
  obtain ⟨hnlni, hnlX, hniX, hX0, hnlf, hnif, hfree, hnlf', hnif', hacc', -⟩ :=
    ins_alloc hch hnd hflr hnxc0 hL hN
  have hsN := hN.sep
  have hniN : ni.toNat ≤ CAP mN T := hN.nc
  have hnN : n.toNat ≤ CAP mN T := by omega
  have hnlN : nl.toNat ≤ CAP mN T := by omega
  have e8N : (hdr mN T 8).toNat = (hdr m0 T 8).toNat := by rw [hK.h8, hL.e8]
  -- the chain `m0 → mN` on old nodes
  have hOld : ∀ i : BitVec 64, i.toNat ≤ CAP m0 T → i ≠ nl → ∀ off : Nat, off < 32 → off % 8 = 0 →
      nodeF mN T i off = nodeF m0 T i off := fun i hi hin off ho h8 => by
    rw [hK.node i (by omega) off ho h8, hL.node i hi hin off ho h8]
  have hNl : ∀ off : Nat, off < 32 → off % 8 = 0 → nodeF mN T nl off = nodeF mL T nl off :=
    fun off ho h8 => hK.node nl hnlL off ho h8
  -- `mI`
  have AgI := ag_fill4 (d := d) (be := be) hsN hniN 0 0 0 dv
  obtain ⟨-, -, -, -, PI, LI, RI, KI, -⟩ := fill4_facts (d := d) (be := be) hsN hniN 0 0 0 dv
  generalize fill4 mN (hdr mN T 40) ni 0 0 0 dv = mI at AgI PI LI RI KI hc ⊢
  have cI := AgI.cap
  -- the three parent stores
  obtain ⟨Ag1, v1⟩ := ag_node (d := d) (be := be) AgI.sep (rfl : hdr mI T 40 = hdr mI T 40)
    (by rw [cI]; exact hniN) (off := 0) (by decide) p
  generalize hm1 : upd mI (na (hdr mI T 40) ni 0) p = m1 at Ag1 v1
  obtain ⟨Ag2, v2⟩ := ag_node (d := d) (be := be) Ag1.sep Ag1.l40 (by rw [Ag1.cap, cI]; exact hnlN)
    (off := 0) (by decide) ni
  generalize hm2 : upd m1 (na (hdr mI T 40) nl 0) ni = m2 at Ag2 v2
  obtain ⟨Ag3, v3⟩ := ag_node (d := d) (be := be) Ag2.sep (Ag2.l40.trans Ag1.l40)
    (by rw [Ag2.cap, Ag1.cap, cI]; exact hnN) (off := 0) (by decide) ni
  generalize hm3 : upd m2 (na (hdr mI T 40) n 0) ni = m3 at Ag3 v3
  have e3 : insM3 mI T nl ni n p = m3 := by rw [← hm3, ← hm2, ← hm1]; rfl
  rw [e3] at hc
  have hN3 : hdr m3 T 40 = hdr mI T 40 := Ag3.l40.trans (Ag2.l40.trans Ag1.l40)
  have c3 : CAP m3 T = CAP mN T := by rw [Ag3.cap, Ag2.cap, Ag1.cap, cI]
  -- `ni`'s children
  obtain ⟨Ag4, v4⟩ := ag_node (d := d) (be := be) Ag3.sep hN3 (by rw [c3]; exact hniN) (off := 8) (by decide)
    (if c then nl else n)
  generalize hm4 : upd m3 (na (hdr mI T 40) ni 8) (if c then nl else n) = m4 at Ag4 v4
  obtain ⟨Ag5, v5⟩ := ag_node (d := d) (be := be) Ag4.sep (Ag4.l40.trans hN3) (by rw [Ag4.cap, c3]; exact hniN)
    (off := 16) (by decide) (if c then n else nl)
  generalize hm5 : upd m4 (na (hdr mI T 40) ni 16) (if c then n else nl) = m5 at Ag5 v5
  have e5 : insM5 mI T nl ni n p c = m5 := by
    rw [← hm5, ← hm4]; unfold insM5; rw [e3]; cases c <;> rfl
  have hN5 : hdr m5 T 40 = hdr mI T 40 := Ag5.l40.trans (Ag4.l40.trans hN3)
  have c5 : CAP m5 T = CAP mN T := by rw [Ag5.cap, Ag4.cap, c3]
  have A15 := AgI.trans (Ag1.trans (Ag2.trans (Ag3.trans (Ag4.trans Ag5))))
  -- `p`'s left child in `m5`
  have hpL : p ≠ 0 → rd m5 (na (hdr mI T 40) p 8) = LEFT m0 T p := by
    intro hp0
    obtain ⟨hpC, hpnl, hpni, hpn⟩ := hp.resolve_left hp0
    have e : rd m5 (na (hdr mI T 40) p 8) = nodeF m5 T p 8 := by rw [nodeF_eq, hN5]
    rw [e, A15.node p (by omega) 8 (by decide) ?_, hOld p hpC hpnl 8 (by decide) (by decide)]
    rintro (h | ⟨h, -⟩ | ⟨h, -⟩ | ⟨h, -⟩ | ⟨h, -⟩ | ⟨h, -⟩)
    · exact hpni h
    · exact hpni h
    · exact hpnl h
    · exact hpn h
    · exact hpni h
    · exact hpni h
  -- the last store
  generalize ho6 : (if LEFT m0 T p = n then 8 else 16 : Nat) = o6
  have ho6' : o6 = 8 ∨ o6 = 16 := by rw [← ho6]; split <;> simp
  generalize hm6 : insMem mI T nl ni n p c = m6
  have A6 : Ag m5 m6 d be T (fun i o => p ≠ 0 ∧ i = p ∧ o = o6) (fun k => p = 0 ∧ k = 56) ∧
      (p = 0 → hdr m6 T 56 = ni) ∧ (p ≠ 0 → nodeF m6 T p o6 = ni) := by
    rw [← hm6]
    unfold insMem
    rw [e5]
    by_cases hp0 : p = 0
    · rw [if_pos hp0]
      obtain ⟨A, v⟩ := ag_root (d := d) (be := be) Ag5.sep ni
      exact ⟨A.mono (fun _ _ h => h.elim) (fun k hk => ⟨hp0, hk⟩), fun _ => v, fun h => absurd hp0 h⟩
    · rw [if_neg hp0]
      obtain ⟨hpC, -, -, -⟩ := hp.resolve_left hp0
      have hpN5 : p.toNat ≤ CAP m5 T := by rw [c5]; omega
      by_cases hl : LEFT m0 T p = n
      · rw [if_pos (by rw [hpL hp0]; exact hl)]
        rw [if_pos hl] at ho6
        subst ho6
        obtain ⟨A, v⟩ := ag_node (d := d) (be := be) Ag5.sep hN5 hpN5 (off := 8) (by decide) ni
        exact ⟨A.mono (fun i o h => ⟨hp0, h.1, h.2⟩) (fun _ h => h.elim), fun h => absurd h hp0, fun _ => v⟩
      · rw [if_neg (by rw [hpL hp0]; exact hl)]
        rw [if_neg hl] at ho6
        subst ho6
        obtain ⟨A, v⟩ := ag_node (d := d) (be := be) Ag5.sep hN5 hpN5 (off := 16) (by decide) ni
        exact ⟨A.mono (fun i o h => ⟨hp0, h.1, h.2⟩) (fun _ h => h.elim), fun h => absurd h hp0, fun _ => v⟩
  obtain ⟨A6, v6r, v6p⟩ := A6
  have AT := A15.trans A6
  have cT : CAP m6 T = CAP mN T := by rw [A6.cap, c5]
  have AT_node : ∀ i : BitVec 64, i.toNat ≤ CAP mN T → ∀ off : Nat, off < 32 → i ≠ ni →
      (i = nl → off ≠ 0) → (i = n → off ≠ 0) → (p ≠ 0 → i = p → off ≠ o6) →
      nodeF m6 T i off = nodeF mN T i off := by
    intro i hi off ho h1 h2 h3 h4
    apply AT.node i hi off ho
    rintro ((h | ⟨h, -⟩ | ⟨h, h'⟩ | ⟨h, h'⟩ | ⟨h, -⟩ | ⟨h, -⟩) | ⟨h0, h, h'⟩)
    · exact h1 h
    · exact h1 h
    · exact h2 h h'
    · exact h3 h h'
    · exact h1 h
    · exact h1 h
    · exact h4 h0 h h'
  have AT_hd : ∀ k, k < 88 → (p = 0 → k ≠ 56) → hdr m6 T k = hdr mN T k := by
    intro k hk h
    apply AT.hd k hk
    rintro ((h' | h' | h' | h' | h' | h') | ⟨h0, h'⟩)
    all_goals first | exact h'.elim | exact h h0 h'
  have hpnn : p ≠ 0 → p ≠ ni ∧ p ≠ nl ∧ p ≠ n := fun hp0 => by
    obtain ⟨-, a, b, c'⟩ := hp.resolve_left hp0; exact ⟨b, a, c'⟩
  have o6n0 : o6 ≠ 0 := by rcases ho6' with h | h <;> omega
  have o6n24 : o6 ≠ 24 := by rcases ho6' with h | h <;> omega
  -- the region and modifies clauses
  have hR : ∀ a, RegionOrFresh mL T H1 H2 a → RegionOrFresh m0 T H0 H2 a := by
    have := hL.hle; have := hN.hle
    rintro a (h | h)
    · rcases hL.region a h with h' | h'
      · exact Or.inl h'
      · unfold InR at h'; exact Or.inr ⟨by omega, by omega⟩
    · unfold InR at h; exact Or.inr ⟨by omega, by omega⟩
  have hmod0N : ModifiesOnly (RegionOrFresh m0 T H0 H2) m0 mN := by
    have := hL.hle; have := hN.hle
    refine (hL.modif.mono fun a h => ?_).trans (hN.modif.mono hR)
    rcases h with h | h
    · exact Or.inl h
    · unfold InR at h; exact Or.inr ⟨by omega, by omega⟩
  have hTN : ∀ a, TableRegion mN T a → RegionOrFresh m0 T H0 H2 a := fun a h => hR a (hN.region a h)
  -- the search key's bit at `dv`
  have hc0 : kbit m0 d be key dv = some c := by
    have A13 := AgI.trans (Ag1.trans (Ag2.trans Ag3))
    have hmod3 : ModifiesOnly (RegionOrFresh m0 T H0 H2) m0 m3 := hmod0N.trans (A13.modif.mono hTN)
    rw [← hc]
    refine (kbit_of_bytes (KL := (hdr m0 T 0).toNat) (fun o ho => ?_) (by rw [hKB] at hdv; exact hdv)).symm
    exact key_byte_keep hsep hH0 hN.h8 hN.hend hkout hkw hmod3 ho
  -- values
  have hniC1 : ni.toNat ≤ CAP m1 T := by rw [Ag1.cap, cI]; exact hniN
  have vP_ni : PAR m6 T ni = p := by
    have A := Ag2.trans (Ag3.trans (Ag4.trans (Ag5.trans A6)))
    rw [← v1]
    apply A.node ni hniC1 0 (by decide)
    rintro (⟨h, -⟩ | ⟨h, -⟩ | ⟨-, h⟩ | ⟨-, h⟩ | ⟨h0, h, -⟩)
    · exact hnlni h.symm
    · exact hnni h.symm
    · exact absurd h (by decide)
    · exact absurd h (by decide)
    · exact (hpnn h0).1 h.symm
  have vP_nl : PAR m6 T nl = ni := by
    have A := Ag3.trans (Ag4.trans (Ag5.trans A6))
    rw [← v2]
    apply A.node nl (by rw [Ag2.cap, Ag1.cap, cI]; exact hnlN) 0 (by decide)
    rintro (⟨h, -⟩ | ⟨h, -⟩ | ⟨h, -⟩ | ⟨h0, h, -⟩)
    · exact hnnl h.symm
    · exact hnlni h
    · exact hnlni h
    · exact (hpnn h0).2.1 h.symm
  have vP_n : PAR m6 T n = ni := by
    have A := Ag4.trans (Ag5.trans A6)
    rw [← v3]
    apply A.node n (by rw [c3]; exact hnN) 0 (by decide)
    rintro (⟨h, -⟩ | ⟨h, -⟩ | ⟨h0, h, -⟩)
    · exact hnni h
    · exact hnni h
    · exact (hpnn h0).2.2 h.symm
  have vL_ni : LEFT m6 T ni = if c then nl else n := by
    have A := Ag5.trans A6
    rw [← v4]
    apply A.node ni (by rw [Ag4.cap, c3]; exact hniN) 8 (by decide)
    rintro (⟨-, h⟩ | ⟨h0, h, -⟩)
    · exact absurd h (by decide)
    · exact (hpnn h0).1 h.symm
  have vR_ni : RIGHT m6 T ni = if c then n else nl := by
    rw [← v5]
    apply A6.node ni (by rw [c5]; exact hniN) 16 (by decide)
    rintro ⟨h0, h, -⟩
    exact (hpnn h0).1 h.symm
  have vK_ni : KIND m6 T ni = dv := by
    have A := Ag1.trans (Ag2.trans (Ag3.trans (Ag4.trans (Ag5.trans A6))))
    rw [← KI]
    apply A.node ni (by rw [cI]; exact hniN) 24 (by decide)
    rintro (⟨-, h⟩ | ⟨h, -⟩ | ⟨h, -⟩ | ⟨-, h⟩ | ⟨-, h⟩ | ⟨h0, h, -⟩)
    · exact absurd h (by decide)
    · exact hnlni h.symm
    · exact hnni h.symm
    · exact absurd h (by decide)
    · exact absurd h (by decide)
    · exact (hpnn h0).1 h.symm
  have vnl : ∀ off : Nat, off < 32 → off % 8 = 0 → off ≠ 0 → nodeF m6 T nl off = nodeF mL T nl off :=
    fun off ho h8 h0 => by
      rw [AT_node nl hnlN off ho hnlni (fun _ => h0) (fun h => absurd h.symm hnnl)
        (fun h0' h => absurd h.symm (hpnn h0').2.1), hNl off ho h8]
  have hX6 : NX m6 T = NX mN T := by unfold NX; rw [AT_hd 64 (by decide) (fun _ => by decide)]
  have hlt24 : (hdr m0 T 24).toNat ≤ CAP m0 T := hcnt
  -- assemble
  refine ⟨⟨AT.sep, by rw [cT]; omega, by rw [cT]; exact hN.c32,
    by rw [AT_hd 0 (by decide) (fun _ => by decide), hK.h0, hL.e0],
    by rw [AT_hd 8 (by decide) (fun _ => by decide), hK.h8, hL.e8],
    by rw [AT_hd 24 (by decide) (fun _ => by decide), hK.h24, hL.e24], ?_, hL.n1,
    by rw [cT]; exact hnlN, hN.n1, by rw [cT]; exact hniN, hnlni, ?_, ?_, ?_, ?_, vP_nl,
    by rw [show LEFT m6 T nl = nodeF m6 T nl 8 from rfl, vnl 8 (by decide) (by decide) (by decide)]; exact hL.nL,
    by rw [show RIGHT m6 T nl = nodeF m6 T nl 16 from rfl, vnl 16 (by decide) (by decide) (by decide)]; exact hL.nR,
    by rw [show KIND m6 T nl = nodeF m6 T nl 24 from rfl, vnl 24 (by decide) (by decide) (by decide)]; exact hL.nK,
    vP_ni, vK_ni, ⟨c, hc0, vL_ni, vR_ni⟩, ?_, ?_, ?_, ?_, by rw [hX6]; exact hX0,
    by rw [hX6, cT]; exact hN.nxc, by rw [hX6]; exact hnlX, by rw [hX6]; exact hniX, hnlf, hnif,
    ⟨fl.tail.tail, by rw [AT_hd 72 (by decide) (fun _ => by decide)]; exact hfree,
      (List.tail_sublist _).trans (List.tail_sublist _), hnlf', hnif', by rw [hX6]; exact hacc'⟩⟩,
    le_trans hL.hle hN.hle, hN.hend, hN.h8, hmod0N.trans (AT.modif.mono hTN), fun a h => hTN a (AT.reg ▸ h)⟩
  · -- the root
    by_cases hp0 : p = 0
    · rw [if_pos hp0]; exact v6r hp0
    · rw [if_neg hp0, AT_hd 56 (by decide) (fun h => absurd h hp0), hK.h56, hL.e56]
  · -- kind
    intro i hi hinl hini
    rw [show KIND m6 T i = nodeF m6 T i 24 from rfl,
      AT_node i (by omega) 24 (by decide) hini (fun _ => by decide) (fun _ => by decide)
        (fun _ _ => Ne.symm o6n24), hOld i hi hinl 24 (by decide) (by decide)]
  · -- par
    intro i hi hinl hini
    by_cases hin : i = n
    · rw [if_pos hin, hin]; exact vP_n
    · rw [if_neg hin, show PAR m6 T i = nodeF m6 T i 0 from rfl,
        AT_node i (by omega) 0 (by decide) hini (fun h => absurd h hinl) (fun h => absurd h hin)
          (fun _ _ => Ne.symm o6n0), hOld i hi hinl 0 (by decide) (by decide)]
  · -- left
    intro i hi hinl hini
    by_cases h : p ≠ 0 ∧ i = p ∧ LEFT m0 T p = n
    · obtain ⟨hp0, hip, hl⟩ := h
      rw [if_pos ⟨hp0, hip, hl⟩, hip]
      have : o6 = 8 := by rw [← ho6, if_pos hl]
      have h6 := v6p hp0; rw [this] at h6; exact h6
    · rw [if_neg h, show LEFT m6 T i = nodeF m6 T i 8 from rfl,
        AT_node i (by omega) 8 (by decide) hini (fun _ => by decide) (fun _ => by decide) ?_,
        hOld i hi hinl 8 (by decide) (by decide)]
      intro hp0 hip ho
      apply h
      refine ⟨hp0, hip, ?_⟩
      by_contra hl
      rw [if_neg hl] at ho6
      omega
  · -- right
    intro i hi hinl hini
    by_cases h : p ≠ 0 ∧ i = p ∧ LEFT m0 T p ≠ n
    · obtain ⟨hp0, hip, hl⟩ := h
      rw [if_pos ⟨hp0, hip, hl⟩, hip]
      have : o6 = 16 := by rw [← ho6, if_neg hl]
      have h6 := v6p hp0; rw [this] at h6; exact h6
    · rw [if_neg h, show RIGHT m6 T i = nodeF m6 T i 16 from rfl,
        AT_node i (by omega) 16 (by decide) hini (fun _ => by decide) (fun _ => by decide) ?_,
        hOld i hi hinl 16 (by decide) (by decide)]
      intro hp0 hip ho
      apply h
      refine ⟨hp0, hip, fun hl => ?_⟩
      rw [if_pos hl] at ho6
      omega
  · -- ord
    intro j hj
    have hj' : j.toNat ≤ CAP m0 T := by unfold CNT at hj; omega
    rw [AT.ord j (by omega), hK.ord j (by omega), hL.ord j hj' (fun e => by rw [e] at hj; unfold CNT at hj; omega)]
  · rw [AT.ord _ (by omega), hK.ord _ (by omega), hL.ordn]
  · -- kbits
    intro i hi hinl c' hc'
    refine kbit_of_bytes (KL := (hdr m0 T 0).toNat) (fun o ho => ?_) (by rw [hKB] at hc'; exact hc')
    rw [AT.key i (by omega) o (by omega), hK.key i (by omega) o (by rw [hL.e8]; omega),
      hL.kold i hi hinl o (by omega)]
  · -- kbitn
    intro c' hc'
    refine kbit_of_bytes (KL := (hdr m0 T 0).toNat) (fun o ho => ?_) (by rw [hKB] at hc'; exact hc')
    rw [AT.key nl hnlN o (by omega), hK.key nl hnlL o (by rw [hL.e8]; omega), hL.keyn o ho]

end view

end InitECandidate.Solver.Spec.Inv
