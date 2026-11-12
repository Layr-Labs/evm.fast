import InitECandidate.Solver.Spec.Inv.HtabInsView

/-!
# `htab_set`: the three outcomes, pure part

`SetPostM m0 m … H0 H1`: the memory-level content of `SetPost` (well formed, count up by at most
one, no new leaf value but `val`, heap pointer `H1`, modifies/region clauses).

* `setA_postM`: empty table, a new leaf as the root;
* `setB_postM`: the key is present, its leaf's value is overwritten;
* `setC_postM`: insertion of a new internal node and leaf (`ins_view` builds `InsV`, then
  `ins_shape`, `ins_extra`, `ins_leafval`).

`insMem` is the raw memory of the splice's stores, read off the code.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The memory-level content of `SetPost`. -/
def SetPostM (m0 m : Mem) (d : BitVec 64 → Prop) (be : Bool) (T val H0 H1 : BitVec 64) : Prop :=
  Sep m T ∧ (∃ L, Shape m d be T L ∧ Extra m d be T L) ∧ CNT m T ≤ CNT m0 T + 1 ∧
  (∀ w, LeafVal m T w → LeafVal m0 T w ∨ w = val) ∧
  H0.toNat ≤ H1.toNat ∧ H1.toNat ≤ heapEnd ∧ H1.toNat % 8 = 0 ∧
  ModifiesOnly (RegionOrFresh m0 T H0 H1) m0 m ∧ (∀ a, TableRegion m T a → RegionOrFresh m0 T H0 H1 a) ∧
  hdr m T 0 = hdr m0 T 0

theorem setPost_of {σ : Type} {s0 u : PanSemStateFiniteExact 64 σ} {T val H0 H1 : BitVec 64}
    (hm : SetPostM s0.memory u.memory s0.memaddrs s0.be T val H0 H1) (hd : u.memaddrs = s0.memaddrs)
    (hb : u.be = s0.be) (hhp : u.globals.lookup hpN = some (.val (.word H1)))
    (hg : ∀ g, g ≠ hpN → u.globals.lookup g = s0.globals.lookup g) : SetPost s0 u T val H0 := by
  obtain ⟨hs, ⟨L, hsh, hex⟩, hc, hlv, h1, h2, h3, hmod, hreg, -⟩ := hm
  exact ⟨⟨hs, L, by rw [hd, hb]; exact ⟨hsh, hex⟩⟩, hc, hlv, H1, hhp, h1, h2, h3, hmod, hreg, hg⟩

/-- `SetPost` with the key length kept (interface rev. 6: the table hook fixes `key_len`). -/
def SetPostK {σ : Type} (s u : PanSemStateFiniteExact 64 σ) (T val H0 : BitVec 64) : Prop :=
  SetPost s u T val H0 ∧ hdr u.memory T 0 = hdr s.memory T 0

theorem setPostK_of {σ : Type} {s0 u : PanSemStateFiniteExact 64 σ} {T val H0 H1 : BitVec 64}
    (hm : SetPostM s0.memory u.memory s0.memaddrs s0.be T val H0 H1) (hd : u.memaddrs = s0.memaddrs)
    (hb : u.be = s0.be) (hhp : u.globals.lookup hpN = some (.val (.word H1)))
    (hg : ∀ g, g ≠ hpN → u.globals.lookup g = s0.globals.lookup g) : SetPostK s0 u T val H0 :=
  ⟨setPost_of hm hd hb hhp hg, hm.2.2.2.2.2.2.2.2.2⟩

/-! ## Overwriting a leaf's value keeps the invariant -/

section leafB
variable {m0 m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T ℓ : BitVec 64} {L : BitVec 64 → Prop}
variable (hsh : Shape m0 d be T L) (hkℓ : KIND m0 T ℓ = KB m0 T)
  (A : Ag m0 m d be T (fun i o => i = ℓ ∧ o = 8) (fun _ => False))
include hsh hkℓ A

theorem lb_hdr {k : Nat} (hk : k < 88) : hdr m T k = hdr m0 T k := A.hd k hk id

theorem lb_kb : KB m T = KB m0 T := by unfold KB; rw [lb_hdr hsh hkℓ A (by decide)]

theorem lb_node {i : BitVec 64} (hi : i.toNat ≤ CAP m0 T) {off : Nat} (ho : off < 32)
    (h : KIND m0 T i ≠ KB m0 T ∨ off ≠ 8) : nodeF m T i off = nodeF m0 T i off :=
  A.node i hi off ho (fun ⟨e, e'⟩ => by
    rcases h with h | h
    · exact h (by rw [e]; exact hkℓ)
    · exact h e')

theorem lb_kbit {x : BitVec 64} (hx : x.toNat ≤ CAP m0 T) {c : BitVec 64} (hc : c.toNat < (KB m0 T).toNat)
    (hS : (hdr m0 T 8).toNat ≤ 2 ^ 20) (hKL : (hdr m0 T 0).toNat ≤ (hdr m0 T 8).toNat) :
    kbit m d be (keyPtr m T x) c = kbit m0 d be (keyPtr m0 T x) c := by
  have hKB : (KB m0 T).toNat = 8 * (hdr m0 T 0).toNat := kb_toNat (by omega)
  refine kbit_of_bytes (KL := (hdr m0 T 0).toNat) (fun o ho => A.key x hx o (by omega)) (by omega)

theorem lb_walk (hS : (hdr m0 T 8).toNat ≤ 2 ^ 20) (hKL : (hdr m0 T 0).toNat ≤ (hdr m0 T 8).toNat)
    {K K' : BitVec 64}
    (hKK : ∀ c : BitVec 64, c.toNat < (KB m0 T).toNat → kbit m d be K' c = kbit m0 d be K c)
    {x v : BitVec 64} (hw : WalkFrom m0 d be T K x v) (hx : x = 0 ∨ L x) : WalkFrom m d be T K' x v := by
  have hkb := lb_kb hsh hkℓ A
  induction hw with
  | zero => exact .zero
  | leaf hx0 hk =>
      have lx := hx.resolve_left hx0
      have hK : KIND m T _ = KIND m0 T _ := lb_node hsh hkℓ A (live_le hsh lx) (off := 24) (by decide) (Or.inr (by decide))
      exact .leaf hx0 (by rw [hK, hkb]; exact hk)
  | left hx0 hk hbt hrest ih =>
      rename_i x v
      have lx := hx.resolve_left hx0
      have hK : KIND m T x = KIND m0 T x := lb_node hsh hkℓ A (live_le hsh lx) (off := 24) (by decide) (Or.inr (by decide))
      refine .left hx0 (by rw [hK, hkb]; exact hk)
        (by rw [hK, hKK _ (kind_lt_kb hsh lx hk)]; exact hbt) ?_
      rw [show LEFT m T x = nodeF m T x 8 from rfl, lb_node hsh hkℓ A (live_le hsh lx) (by decide) (Or.inl hk)]
      exact ih (Or.inr (hsh.internal _ lx hk).1)
  | right hx0 hk hbt hrest ih =>
      rename_i x v
      have lx := hx.resolve_left hx0
      have hK : KIND m T x = KIND m0 T x := lb_node hsh hkℓ A (live_le hsh lx) (off := 24) (by decide) (Or.inr (by decide))
      refine .right hx0 (by rw [hK, hkb]; exact hk)
        (by rw [hK, hKK _ (kind_lt_kb hsh lx hk)]; exact hbt) ?_
      rw [show RIGHT m T x = nodeF m T x 16 from rfl,
        lb_node hsh hkℓ A (live_le hsh lx) (by decide) (Or.inr (by decide))]
      exact ih (Or.inr (hsh.internal _ lx hk).2.1)

theorem lb_anc {i x : BitVec 64} (h : Anc m T i x) (hi : L i) : Anc m0 T i x := by
  have hkb := lb_kb hsh hkℓ A
  induction h with
  | refl => exact .refl _
  | @left i x hk _ ih =>
      have hk0 : KIND m0 T i ≠ KB m0 T := by
        have hK : KIND m T i = KIND m0 T i :=
          lb_node hsh hkℓ A (live_le hsh hi) (off := 24) (by decide) (Or.inr (by decide))
        rw [← hK, ← hkb]; exact hk
      have e : LEFT m T i = LEFT m0 T i := lb_node hsh hkℓ A (live_le hsh hi) (by decide) (Or.inl hk0)
      rw [e] at ih
      exact .left hk0 (ih (hsh.internal _ hi hk0).1)
  | @right i x hk _ ih =>
      have hk0 : KIND m0 T i ≠ KB m0 T := by
        have hK : KIND m T i = KIND m0 T i :=
          lb_node hsh hkℓ A (live_le hsh hi) (off := 24) (by decide) (Or.inr (by decide))
        rw [← hK, ← hkb]; exact hk
      have e : RIGHT m T i = RIGHT m0 T i :=
        lb_node hsh hkℓ A (live_le hsh hi) (by decide) (Or.inr (by decide))
      rw [e] at ih
      exact .right hk0 (ih (hsh.internal _ hi hk0).2.1)

/-- **Overwriting a leaf's value keeps the invariant.** -/
theorem lb_wf (hex : Extra m0 d be T L) (hKL : (hdr m0 T 0).toNat ≤ (hdr m0 T 8).toNat) :
    Shape m d be T L ∧ Extra m d be T L := by
  have hS := hex.bnd.1
  have hkb := lb_kb hsh hkℓ A
  have hcap : CAP m T = CAP m0 T := A.cap
  have hcnt : CNT m T = CNT m0 T := by unfold CNT; rw [lb_hdr hsh hkℓ A (by decide)]
  have h56 : hdr m T 56 = hdr m0 T 56 := lb_hdr hsh hkℓ A (by decide)
  have hnx : NX m T = NX m0 T := by unfold NX; rw [lb_hdr hsh hkℓ A (by decide)]
  have hK : ∀ i, L i → KIND m T i = KIND m0 T i := fun i hi =>
    lb_node hsh hkℓ A (live_le hsh hi) (by decide) (Or.inr (by decide))
  have hP : ∀ i : BitVec 64, i.toNat ≤ CAP m0 T → PAR m T i = PAR m0 T i := fun i hi =>
    lb_node hsh hkℓ A hi (by decide) (Or.inr (by decide))
  have hR : ∀ i, L i → RIGHT m T i = RIGHT m0 T i := fun i hi =>
    lb_node hsh hkℓ A (live_le hsh hi) (by decide) (Or.inr (by decide))
  have hLf : ∀ i, L i → KIND m0 T i ≠ KB m0 T → LEFT m T i = LEFT m0 T i := fun i hi hk =>
    lb_node hsh hkℓ A (live_le hsh hi) (by decide) (Or.inl hk)
  have hO : ∀ j : BitVec 64, j.toNat < CNT m0 T → ORD m T j = ORD m0 T j := fun j hj =>
    A.ord j (by have := hsh.cnt_le; omega)
  refine ⟨⟨by rw [hcnt, hcap]; exact hsh.cnt_le, fun i hi => by rw [hcap]; exact hsh.live_range i hi,
    fun h i => hsh.root_empty (by rw [← h56]; exact h) i, fun h => ?_, fun i hi hk => ?_, fun i hi hr => ?_,
    fun j hj => ?_, fun i hi hk => ?_, fun j hj => ?_, fun i hi => by rw [hK i hi, hkb]; exact hsh.kind_le i hi⟩,
    ⟨by rw [hnx]; exact hex.nx_pos, by rw [hnx, hcap]; exact hex.nx_le, fun i hi => by rw [hnx]; exact hex.live_lt i hi,
      ?_, ?_, by rw [lb_hdr hsh hkℓ A (by decide), hcap]; exact hex.bnd⟩⟩
  · rw [h56] at h ⊢
    obtain ⟨h1, h2⟩ := hsh.root_live h
    exact ⟨h1, by rw [hP _ (live_le hsh h1)]; exact h2⟩
  · rw [hK i hi, hkb] at hk
    obtain ⟨lL, lR, pL, pR, hne, kL, kR⟩ := hsh.internal i hi hk
    rw [hLf i hi hk, hR i hi, hK _ lL, hK _ lR, hK i hi, hP _ (live_le hsh lL), hP _ (live_le hsh lR)]
    exact ⟨lL, lR, pL, pR, hne, kL, kR⟩
  · rw [h56] at hr
    obtain ⟨lq, kq, hch⟩ := hsh.parent i hi hr
    rw [hP i (live_le hsh hi), hK _ lq, hkb, hLf _ lq kq, hR _ lq]
    exact ⟨lq, kq, hch⟩
  · rw [hcnt] at hj
    obtain ⟨ly, ky, ry⟩ := hsh.order_live j hj
    rw [hO j hj, hK _ ly, hkb, hR _ ly]
    exact ⟨ly, ky, ry⟩
  · rw [hK i hi, hkb] at hk
    obtain ⟨j, hj, ho⟩ := hsh.leaf_ordered i hi hk
    exact ⟨j, by rw [hcnt]; exact hj, by rw [hO j hj, ho]⟩
  · rw [hcnt] at hj
    obtain ⟨ly, -, -⟩ := hsh.order_live j hj
    rw [hO j hj, h56]
    exact lb_walk hsh hkℓ A hS hKL (fun c hc => lb_kbit hsh hkℓ A (live_le hsh ly) hc hS hKL) (hsh.walk j hj)
      (Or.inr (hsh.root_live (fun h => by
        have := hsh.walk j hj; rw [h] at this
        exact live_ne0 hsh ly (walkFrom_functional this .zero))).1)
  · obtain ⟨fl, hch, hnd, hel, hacc⟩ := hex.free
    refine ⟨fl, ?_, hnd, fun x hx => by rw [hnx]; exact hel x hx, by rw [hcnt, hnx]; exact hacc⟩
    rw [lb_hdr hsh hkℓ A (by decide)]
    refine freeChain_congr hch fun x hx => hP x ?_
    have := hel x hx; have := hex.nx_le; omega
  · intro i hi hk x y hx hy hkx hky c hc
    have hk0 : KIND m0 T i ≠ KB m0 T := by rw [← hK i hi, ← hkb]; exact hk
    have ax := lb_anc hsh hkℓ A hx hi
    have ay := lb_anc hsh hkℓ A hy hi
    have lx := anc_live hsh ax hi
    have ly := anc_live hsh ay hi
    rw [hK i hi] at hc
    have hcK : c.toNat < (KB m0 T).toNat := by have := kind_lt_kb hsh hi hk0; omega
    rw [lb_kbit hsh hkℓ A (live_le hsh lx) hcK hS hKL, lb_kbit hsh hkℓ A (live_le hsh ly) hcK hS hKL]
    exact hex.pfx i hi hk0 x y ax ay (by rw [← hK x lx, ← hkb]; exact hkx) (by rw [← hK y ly, ← hkb]; exact hky) c hc

end leafB

/-- A Nodup list of nonzero indices below `N` is shorter than `N`. -/
theorem nat_nodup_len : ∀ (N : Nat) (l : List Nat), l.Nodup → (∀ x ∈ l, x < N) → l.length ≤ N
  | 0, [], _, _ => le_refl _
  | 0, x :: _, _, h => absurd (h x (List.mem_cons_self ..)) (Nat.not_lt_zero _)
  | N + 1, l, hnd, h => by
    have h1 : (l.erase N).length ≤ N := nat_nodup_len N (l.erase N) (hnd.erase N) (fun x hx => by
      have hx' := (hnd.mem_erase_iff).mp hx
      have := h x hx'.2; omega)
    have h2 : l.length ≤ (l.erase N).length + 1 := by rw [List.length_erase]; split <;> omega
    omega

theorem nodup_len_lt {l : List (BitVec 64)} {N : Nat} (hnd : l.Nodup) (hN : 1 ≤ N)
    (h : ∀ x ∈ l, 1 ≤ x.toNat ∧ x.toNat < N) : l.length + 1 ≤ N := by
  have hnd' : (0 :: l.map BitVec.toNat).Nodup := by
    refine List.nodup_cons.mpr ⟨fun hm => ?_, hnd.map (fun a b e => BitVec.eq_of_toNat_eq e)⟩
    obtain ⟨x, hx, e⟩ := List.mem_map.mp hm
    have := (h x hx).1; omega
  have := nat_nodup_len N _ hnd' (fun x hx => by
    rcases List.mem_cons.mp hx with rfl | hx
    · exact hN
    · obtain ⟨y, hy, rfl⟩ := List.mem_map.mp hx; exact (h y hy).2)
  simpa using this

/-! ## The three outcomes -/

section outcomes
variable {m0 : Mem} {d : BitVec 64 → Prop} {be : Bool} {T key val H0 : BitVec 64} {L : BitVec 64 → Prop}
  {fl : List (BitVec 64)}

/-- The entry facts every branch uses. -/
structure SetCtx (m0 : Mem) (d : BitVec 64 → Prop) (be : Bool) (T key H0 : BitVec 64) (L : BitVec 64 → Prop)
    (fl : List (BitVec 64)) : Prop where
  sep : Sep m0 T
  sh : Shape m0 d be T L
  ex : Extra m0 d be T L
  chain : FreeChain m0 T (hdr m0 T 72) fl
  nd : fl.Nodup
  fel : ∀ x ∈ fl, 1 ≤ x.toNat ∧ x.toNat < NX m0 T ∧ ¬ L x
  acc : 2 * CNT m0 T + fl.length ≤ NX m0 T
  h0 : H0.toNat ≤ heapEnd
  h8 : H0.toNat % 8 = 0
  disj : ∀ a, TableRegion m0 T a → ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd)
  kw : key.toNat + (hdr m0 T 0).toNat ≤ 2 ^ 64
  kout : ∀ a : BitVec 64, key.toNat ≤ a.toNat → a.toNat < key.toNat + (hdr m0 T 0).toNat →
    ¬ TableRegion m0 T a ∧ ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd)

theorem setCtx_nlpre (hs : SetCtx m0 d be T key H0 L fl) : NLPre m0 T fl H0 key :=
  ⟨⟨hs.sep, hs.ex.bnd.1, hs.ex.bnd.2.1, hs.ex.bnd.2.2, hs.ex.nx_pos, hs.ex.nx_le, hs.chain,
    fun x h => ⟨(hs.fel x h).1, (hs.fel x h).2.1⟩, hs.h0, hs.h8, hs.disj⟩, hs.sh.cnt_le, hs.kw, hs.kout⟩

/-- `htab_new_internal`'s precondition after `htab_new_leaf`. -/
theorem nl_nnpre (hs : SetCtx m0 d be T key H0 L fl) {mL : Mem} {H1 nl : BitVec 64}
    (hL : NLPost m0 mL d be T fl H0 H1 nl key val) : NNPre mL T fl.tail H1 := by
  have hnx1 := hs.ex.nx_pos
  have hnxc := hs.ex.nx_le
  have hX : NX m0 T ≤ NX mL T := by
    rcases hL.alloc with ⟨-, -, -, e⟩ | ⟨-, -, e, -⟩ <;> omega
  refine ⟨hL.sep, by rw [hL.e8]; exact hs.ex.bnd.1, le_trans hs.ex.bnd.2.1 hL.cap, hL.c32, by omega, hL.nxc,
    ?_, fun x hx => ?_, hL.hend, hL.h8, fun a ha hb => ?_⟩
  · rcases hL.alloc with ⟨xs, hfl, h72, -⟩ | ⟨hfl, -, -, h72⟩
    · subst hfl
      have hch := hs.chain
      have hnd := hs.nd
      obtain ⟨hnlxs, -⟩ := List.nodup_cons.mp hnd
      simp only [List.tail_cons]
      rw [h72]
      refine freeChain_congr hch.2 fun x hx => ?_
      have := hs.fel x (List.mem_cons_of_mem _ hx)
      exact hL.node x (by omega) (fun e => hnlxs (e ▸ hx)) 0 (by decide) (by decide)
    · subst hfl; rw [h72]; rfl
  · have := hs.fel x (List.mem_of_mem_tail hx); omega
  · rcases hL.region a ha with h | h
    · exact hs.disj a h ⟨by have := hL.hle; omega, hb.2⟩
    · unfold InR at h; omega

theorem setA_postM (hs : SetCtx m0 d be T key H0 L fl)
    (hw : WalkFrom m0 d be T key (hdr m0 T 56) 0) {mL : Mem} {H1 nl : BitVec 64}
    (hL : NLPost m0 mL d be T fl H0 H1 nl key val) :
    SetPostM m0 (upd mL (T + BitVec.ofNat 64 56) nl) d be T val H0 H1 := by
  have hsh := hs.sh
  have hr0 : hdr m0 T 56 = 0 := by
    by_contra h
    obtain ⟨-, l0, -⟩ := walk_anc hsh hw (hsh.root_live h).1
    exact live_ne0 hsh l0 rfl
  have hL0 := hsh.root_empty hr0
  have hc0 : CNT m0 T = 0 := by
    by_contra h
    exact hL0 _ (hsh.order_live 0 (by simp; omega)).1
  have h24 : hdr m0 T 24 = 0 := BitVec.eq_of_toNat_eq (by unfold CNT at hc0; simpa using hc0)
  have hpre := nl_nnpre hs hL
  obtain ⟨A, v⟩ := ag_root (d := d) (be := be) hL.sep nl
  generalize upd mL (T + BitVec.ofNat 64 56) nl = m at A v ⊢
  have hcap : CAP m T = CAP mL T := A.cap
  have hH : ∀ k, k < 88 → k ≠ 56 → hdr m T k = hdr mL T k := fun k hk h => A.hd k hk h
  have hkb : KB m T = KB m0 T := by unfold KB; rw [hH 0 (by decide) (by decide), hL.e0]
  have hcnt : CNT m T = 1 := by unfold CNT; rw [hH 24 (by decide) (by decide), hL.e24, h24]; rfl
  have hnd : ∀ off : Nat, off < 32 → nodeF m T nl off = nodeF mL T nl off :=
    fun off ho => A.node nl hL.nc off ho id
  have hK : KIND m T nl = KB m T := by
    rw [show KIND m T nl = nodeF m T nl 24 from rfl, hnd 24 (by decide), hkb]; exact hL.nK
  have hO : ORD m T 0 = nl := by
    rw [A.ord 0 (by simp)]
    have := hL.ordn; rw [h24] at this; exact this
  have hnl0 : nl ≠ 0 := fun e => by have := hL.n1; rw [e] at this; simp at this
  have hX : NX m T = NX mL T := by unfold NX; rw [hH 64 (by decide) (by decide)]
  have h72 : hdr m T 72 = hdr mL T 72 := hH 72 (by decide) (by decide)
  have hNX : NX m0 T ≤ NX mL T ∧ nl.toNat < NX mL T := by
    rcases hL.alloc with ⟨xs, rfl, -, e⟩ | ⟨-, e1, e2, -⟩
    · have := hs.fel nl (List.mem_cons_self ..); omega
    · omega
  have hj0 : ∀ j : BitVec 64, j.toNat < CNT m T → j = 0 := fun j hj =>
    BitVec.eq_of_toNat_eq (by rw [hcnt] at hj; simp; omega)
  have hc1 := hs.ex.bnd.2.1
  have hcL := hL.cap
  refine ⟨A.sep, ⟨fun i => i = nl, ⟨by rw [hcnt, hcap]; omega, fun i hi => ?_, fun h => ?_, fun _ => ?_,
    fun i hi hk => ?_, fun i hi hr => ?_, fun j hj => ?_, fun i hi _ => ?_, fun j hj => ?_, fun i hi => ?_⟩,
    ⟨by rw [hX]; have := hs.ex.nx_pos; omega, by rw [hX, hcap]; exact hL.nxc, fun i hi => ?_, ?_,
      fun i hi hk => ?_, by rw [hH 8 (by decide) (by decide), hcap, hL.e8]; exact ⟨hs.ex.bnd.1, by omega, hL.c32⟩⟩⟩,
    by rw [hcnt]; omega, fun w ⟨j, hj, hw'⟩ => ?_, hL.hle, hL.hend, hL.h8,
    hL.modif.trans (A.modif.mono hL.region), fun a h => hL.region a (A.reg ▸ h),
    by rw [hH 0 (by decide) (by decide), hL.e0]⟩
  · rw [hi, hcap]; exact ⟨hL.n1, hL.nc⟩
  · rw [v] at h; exact absurd h hnl0
  · rw [v]; refine ⟨rfl, ?_⟩
    rw [show PAR m T nl = nodeF m T nl 0 from rfl, hnd 0 (by decide)]; exact hL.nP
  · rw [hi] at hk; exact absurd hK hk
  · rw [v] at hr; exact absurd hi hr
  · rw [hj0 j hj, hO]
    refine ⟨rfl, hK, ?_⟩
    rw [show RIGHT m T nl = nodeF m T nl 16 from rfl, hnd 16 (by decide)]
    have := hL.nR; rw [h24] at this; exact this
  · rw [hi]; exact ⟨0, by rw [hcnt]; simp, hO⟩
  · rw [hj0 j hj, hO, v]; exact .leaf hnl0 hK
  · rw [hi, hK]
  · rw [hi, hX]; exact hNX.2
  · refine ⟨fl.tail, ?_, hs.nd.sublist (List.tail_sublist _), fun x hx => ?_, ?_⟩
    · rw [h72]
      refine freeChain_congr hpre.chain fun x hx => ?_
      have := hpre.flr x hx
      exact A.node x (by have := hL.nxc; omega) 0 (by decide) id
    · obtain ⟨h1, h2⟩ := hpre.flr x hx
      refine ⟨h1, by rw [hX]; exact h2, fun e => ?_⟩
      rw [e] at hx
      rcases hL.alloc with ⟨xs, rfl, -, -⟩ | ⟨rfl, -, -, -⟩
      · exact (List.nodup_cons.mp hs.nd).1 hx
      · simp at hx
    · rw [hcnt, hX]
      rcases hL.alloc with ⟨xs, rfl, -, e⟩ | ⟨rfl, -, e, -⟩
      · have := nodup_len_lt hs.nd hs.ex.nx_pos (fun x h => ⟨(hs.fel x h).1, (hs.fel x h).2.1⟩)
        simp only [List.tail_cons, List.length_cons] at this ⊢
        omega
      · simp only [List.tail_nil, List.length_nil]; have := hs.ex.nx_pos; omega
  · rw [hi] at hk; exact absurd hK hk
  · right
    rw [hj0 j hj, hO, show LEFT m T nl = nodeF m T nl 8 from rfl, hnd 8 (by decide)] at hw'
    rw [← hw']; exact hL.nL

theorem setB_postM (hs : SetCtx m0 d be T key H0 L fl) {ℓ : BitVec 64}
    (hw : WalkFrom m0 d be T key (hdr m0 T 56) ℓ) (hℓ : ℓ ≠ 0) :
    SetPostM m0 (upd m0 (na (hdr m0 T 40) ℓ 8) val) d be T val H0 H0 := by
  have hsh := hs.sh
  have hr0 : hdr m0 T 56 ≠ 0 := fun h => hℓ (by rw [h] at hw; exact walkFrom_functional hw .zero)
  obtain ⟨-, lℓ, kℓ⟩ := walk_anc hsh hw (hsh.root_live hr0).1
  obtain ⟨A, v⟩ := ag_node (d := d) (be := be) hs.sep (rfl : hdr m0 T 40 = hdr m0 T 40) (live_le hsh lℓ)
    (off := 8) (by decide) val
  obtain ⟨sh', ex'⟩ := lb_wf hsh kℓ A hs.ex (lay_of_sep hs.sep).KL
  have hcnt : CNT (upd m0 (na (hdr m0 T 40) ℓ 8) val) T = CNT m0 T := by
    unfold CNT; rw [lb_hdr hsh kℓ A (by decide)]
  refine ⟨A.sep, ⟨L, sh', ex'⟩, by rw [hcnt]; omega, fun w ⟨j, hj, hw'⟩ => ?_, le_refl _, hs.h0, hs.h8,
    A.modif.mono fun a h => Or.inl h, fun a h => Or.inl (A.reg ▸ h), lb_hdr hsh kℓ A (by decide)⟩
  rw [hcnt] at hj
  rw [A.ord j (by have := hsh.cnt_le; omega)] at hw'
  by_cases he : ORD m0 T j = ℓ
  · right; rw [he] at hw'; rw [← hw']; exact v
  · left
    obtain ⟨ly, -, -⟩ := hsh.order_live j hj
    refine ⟨j, hj, ?_⟩
    rw [← hw']
    exact (A.node _ (live_le hsh ly) 8 (by decide) (fun h => he h.1)).symm

theorem setC_postM (hs : SetCtx m0 d be T key H0 L fl) {ℓ dv p n : BitVec 64}
    (hw : WalkFrom m0 d be T key (hdr m0 T 56) ℓ) (hℓ : ℓ ≠ 0)
    (hdif : Dif m0 d be (keyPtr m0 T ℓ) key (hdr m0 T 0))
    (hfd : FDPost m0 d be key (keyPtr m0 T ℓ) (hdr m0 T 0) dv)
    (hpth : Pth m0 d be T key dv.toNat (hdr m0 T 56) p n) (hwn : WalkFrom m0 d be T key n ℓ)
    (hn0 : n ≠ 0) (hdn : dv.toNat ≤ (KIND m0 T n).toNat)
    {mL mN : Mem} {H1 H2 nl ni : BitVec 64} (hL : NLPost m0 mL d be T fl H0 H1 nl key val)
    (hN : NNPost mL mN d be T fl.tail H1 H2 ni) {c : Bool}
    (hc : kbit (insM3 (fill4 mN (hdr mN T 40) ni 0 0 0 dv) T nl ni n p) d be key dv = some c) :
    SetPostM m0 (insMem (fill4 mN (hdr mN T 40) ni 0 0 0 dv) T nl ni n p c) d be T val H0 H2 := by
  have hsh := hs.sh
  obtain ⟨hdlt, hpre, x, y, hx, hy, hxy⟩ : dv.toNat < 8 * (hdr m0 T 0).toNat ∧
      (∀ c : BitVec 64, c.toNat < dv.toNat → kbit m0 d be key c = kbit m0 d be (keyPtr m0 T ℓ) c) ∧
      ∃ x y, kbit m0 d be key dv = some x ∧ kbit m0 d be (keyPtr m0 T ℓ) dv = some y ∧ x ≠ y := by
    rcases hfd with h | ⟨-, heq⟩
    · exact h
    · exfalso
      obtain ⟨j, hj, hne⟩ := hdif
      exact hne (heq j hj).symm
  have hr0 : hdr m0 T 56 ≠ 0 := fun h => hℓ (by rw [h] at hw; exact walkFrom_functional hw .zero)
  have rl := (hsh.root_live hr0).1
  obtain ⟨ln, -, hpc⟩ := pth_live hsh hpth rl
  have hKL := (lay_of_sep hs.sep).KL
  have hKB : (KB m0 T).toNat = 8 * (hdr m0 T 0).toNat := kb_toNat (by have := hs.ex.bnd.1; omega)
  have hdv : dv.toNat < (KB m0 T).toNat := by rw [hKB]; exact hdlt
  obtain ⟨-, -, -, -, hnlf, hnif, -, -, -, -, -⟩ :=
    ins_alloc hs.chain hs.nd (fun x h => ⟨(hs.fel x h).1, (hs.fel x h).2.1⟩) hs.ex.nx_le hL hN
  have nll : ∀ {z : BitVec 64}, (z ∈ fl ∨ NX m0 T ≤ z.toNat) → ¬ L z := fun hz h => by
    rcases hz with h1 | h1
    · exact (hs.fel _ h1).2.2 h
    · have := hs.ex.live_lt _ h; omega
  have hnnl : n ≠ nl := fun e => nll hnlf (e ▸ ln)
  have hnni : n ≠ ni := fun e => nll hnif (e ▸ ln)
  have hp' : p = 0 ∨ (p.toNat ≤ CAP m0 T ∧ p ≠ nl ∧ p ≠ ni ∧ p ≠ n) := by
    rcases hpc with ⟨h, -⟩ | ⟨lp, -, hlt, -⟩
    · exact Or.inl h
    · refine Or.inr ⟨live_le hsh lp, fun e => nll hnlf (e ▸ lp), fun e => nll hnif (e ▸ lp), fun e => ?_⟩
      rw [e] at hlt; omega
  obtain ⟨hv, hle, hend, h8, hmod, hreg⟩ := ins_view hs.sep hs.ex.bnd.1 hsh.cnt_le hs.chain hs.nd
    (fun x h => ⟨(hs.fel x h).1, (hs.fel x h).2.1⟩) hs.ex.nx_le hs.h8 hs.kw hs.kout hL hN (live_le hsh ln)
    hnnl hnni hp' hdv hc
  have hctx := ins_ctx hsh hs.ex hs.fel hv.nlfree hv.nifree hr0 hpth hwn hdv hdn hpre hx hy hxy
  exact ⟨hv.sep, ⟨_, ins_shape hsh hv hctx hpth hs.acc, ins_extra hsh hv hctx hs.ex hs.nd hs.fel hs.acc⟩,
    by rw [ins_cnt hsh hv hctx], fun w h => ins_leafval hsh hv hctx h, hle, hend, h8, hmod, hreg, hv.e0⟩

end outcomes

end InitECandidate.Solver.Spec.Inv
