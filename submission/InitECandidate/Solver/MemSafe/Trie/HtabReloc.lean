import InitECandidate.Solver.Spec.Inv.HtabFrame

set_option autoImplicit false
set_option maxRecDepth 100000

/-!
# `TableWF` under relocation

`tableWF_reloc`: a table at `T'` whose separation holds and whose header words `0, 8, 24, 56, 64, 72, 80`,
node fields, order entries and key bytes (for indices `<= cap`) equal those of the well-formed table at `T`
is well formed (same live set). This is what `htab_copy` needs: it copies the three arrays and the
header and stores the new array pointers.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The view equalities between a table (`m`, `T`) and its copy (`m'`, `T'`). -/
structure RelocHyp (m m' : Mem) (d : BitVec 64 → Prop) (be : Bool) (T T' : BitVec 64) : Prop where
  h0 : hdr m' T' 0 = hdr m T 0
  h8 : hdr m' T' 8 = hdr m T 8
  h24 : hdr m' T' 24 = hdr m T 24
  h56 : hdr m' T' 56 = hdr m T 56
  h64 : hdr m' T' 64 = hdr m T 64
  h72 : hdr m' T' 72 = hdr m T 72
  h80 : hdr m' T' 80 = hdr m T 80
  node : ∀ i : BitVec 64, i.toNat ≤ CAP m T → ∀ off : Nat, off < 32 → off % 8 = 0 →
    nodeF m' T' i off = nodeF m T i off
  ord : ∀ j : BitVec 64, j.toNat ≤ CAP m T → ORD m' T' j = ORD m T j
  key : ∀ i : BitVec 64, i.toNat ≤ CAP m T → ∀ o : Nat, o < (hdr m T 8).toNat →
    kbyte m' d be (keyPtr m' T' i + BitVec.ofNat 64 o) = kbyte m d be (keyPtr m T i + BitVec.ofNat 64 o)

section reloc
variable {m m' : Mem} {d : BitVec 64 → Prop} {be : Bool} {T T' : BitVec 64} {L : BitVec 64 → Prop}

theorem RelocHyp.cap (R : RelocHyp m m' d be T T') : CAP m' T' = CAP m T := by
  unfold CAP; rw [R.h80]

theorem RelocHyp.cnt (R : RelocHyp m m' d be T T') : CNT m' T' = CNT m T := by
  unfold CNT; rw [R.h24]

theorem RelocHyp.kb (R : RelocHyp m m' d be T T') : KB m' T' = KB m T := by
  unfold KB; rw [R.h0]

theorem RelocHyp.par (R : RelocHyp m m' d be T T') {i : BitVec 64} (h : i.toNat ≤ CAP m T) :
    PAR m' T' i = PAR m T i := R.node i h 0 (by decide) (by decide)
theorem RelocHyp.left (R : RelocHyp m m' d be T T') {i : BitVec 64} (h : i.toNat ≤ CAP m T) :
    LEFT m' T' i = LEFT m T i := R.node i h 8 (by decide) (by decide)
theorem RelocHyp.right (R : RelocHyp m m' d be T T') {i : BitVec 64} (h : i.toNat ≤ CAP m T) :
    RIGHT m' T' i = RIGHT m T i := R.node i h 16 (by decide) (by decide)
theorem RelocHyp.kind (R : RelocHyp m m' d be T T') {i : BitVec 64} (h : i.toNat ≤ CAP m T) :
    KIND m' T' i = KIND m T i := R.node i h 24 (by decide) (by decide)

theorem reloc_kb_toNat {m : Mem} {T : BitVec 64} (hS : (hdr m T 8).toNat ≤ 2 ^ 20) (hKL : (hdr m T 0).toNat ≤ (hdr m T 8).toNat) :
    (KB m T).toNat = 8 * (hdr m T 0).toNat := by
  unfold KB
  rw [BitVec.toNat_mul, BitVec.toNat_ofNat]
  have : (hdr m T 0).toNat * (8 % 2 ^ 64) = 8 * (hdr m T 0).toNat := by
    rw [Nat.mod_eq_of_lt (by omega : 8 < 2 ^ 64)]; exact Nat.mul_comm _ _
  rw [this]
  exact Nat.mod_eq_of_lt (by omega)

theorem reloc_shr3_ofNat {b : BitVec 64} : b >>> (3 : Nat) = BitVec.ofNat 64 (b.toNat / 8) := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_ushiftRight, BitVec.toNat_ofNat, Nat.mod_eq_of_lt]
  · simp [Nat.shiftRight_eq_div_pow]
  · have := b.isLt; omega

/-- A key bit of a leaf's key, below the key length, is unchanged. -/
theorem RelocHyp.kbit (R : RelocHyp m m' d be T T') (hsep : Sep m T)
    (hS : (hdr m T 8).toNat ≤ 2 ^ 20) {x b : BitVec 64}
    (hx : x.toNat ≤ CAP m T) (hb : b.toNat < (KB m T).toNat) :
    Spec.Inv.kbit m' d be (keyPtr m' T' x) b = Spec.Inv.kbit m d be (keyPtr m T x) b := by
  have hl := lay_of_sep hsep
  have hKL := hl.KL
  have hKB := reloc_kb_toNat hS hKL
  have ho : b.toNat / 8 < (hdr m T 8).toNat := by omega
  unfold Spec.Inv.kbit
  rw [reloc_shr3_ofNat, R.key x hx _ ho]


/-- The walk transfers. -/
theorem RelocHyp.walk (R : RelocHyp m m' d be T T') (hsh : Shape m d be T L)
    {key key' : BitVec 64}
    (hk : ∀ b : BitVec 64, b.toNat < (KB m T).toNat →
      Spec.Inv.kbit m' d be key' b = Spec.Inv.kbit m d be key b) {n v : BitVec 64}
    (h : WalkFrom m d be T key n v) : (n = 0 ∨ L n) → WalkFrom m' d be T' key' n v := by
  induction h with
  | zero => intro _; exact WalkFrom.zero
  | @leaf n hn hkn =>
    intro hL
    have hLn : L n := hL.resolve_left hn
    have hle := (hsh.live_range n hLn).2
    exact WalkFrom.leaf hn (by rw [R.kind hle, R.kb]; exact hkn)
  | @left n v hn hkn hb hw ih =>
    intro hL
    have hLn : L n := hL.resolve_left hn
    have hle := (hsh.live_range n hLn).2
    obtain ⟨hl, hr, -, -, -, -, -⟩ := hsh.internal n hLn hkn
    have hlt : (KIND m T n).toNat < (KB m T).toNat := by
      have := hsh.kind_le n hLn
      have hne : (KIND m T n).toNat ≠ (KB m T).toNat := fun e => hkn (BitVec.eq_of_toNat_eq e)
      omega
    refine WalkFrom.left hn (by rw [R.kind hle, R.kb]; exact hkn) ?_ ?_
    · rw [R.kind hle, hk _ hlt]; exact hb
    · rw [R.left hle]; exact ih (Or.inr hl)
  | @right n v hn hkn hb hw ih =>
    intro hL
    have hLn : L n := hL.resolve_left hn
    have hle := (hsh.live_range n hLn).2
    obtain ⟨hl, hr, -, -, -, -, -⟩ := hsh.internal n hLn hkn
    have hlt : (KIND m T n).toNat < (KB m T).toNat := by
      have := hsh.kind_le n hLn
      have hne : (KIND m T n).toNat ≠ (KB m T).toNat := fun e => hkn (BitVec.eq_of_toNat_eq e)
      omega
    refine WalkFrom.right hn (by rw [R.kind hle, R.kb]; exact hkn) ?_ ?_
    · rw [R.kind hle, hk _ hlt]; exact hb
    · rw [R.right hle]; exact ih (Or.inr hr)

/-- The free chain transfers. -/
theorem RelocHyp.free (R : RelocHyp m m' d be T T') {fl : List (BitVec 64)} {h : BitVec 64}
    (hc : FreeChain m T h fl) (hle : ∀ x ∈ fl, x.toNat ≤ CAP m T) : FreeChain m' T' h fl := by
  induction fl generalizing h with
  | nil => exact hc
  | cons x xs ih =>
    obtain ⟨h1, h2⟩ := hc
    refine ⟨h1, ?_⟩
    rw [R.par (hle x List.mem_cons_self)]
    exact ih h2 (fun y hy => hle y (List.mem_cons_of_mem _ hy))

theorem anc_live (hsh : Shape m d be T L) {i x : BitVec 64} (h : Anc m T i x) : L i → L x := by
  induction h with
  | refl => exact id
  | @left i x hk _ ih =>
    intro hL
    exact ih (hsh.internal i hL hk).1
  | @right i x hk _ ih =>
    intro hL
    exact ih (hsh.internal i hL hk).2.1

theorem RelocHyp.anc (R : RelocHyp m m' d be T T') (hsh : Shape m d be T L) {i x : BitVec 64}
    (h : Anc m' T' i x) : L i → Anc m T i x := by
  induction h with
  | refl => intro _; exact Anc.refl _
  | @left i x hk _ ih =>
    intro hL
    have hle := (hsh.live_range i hL).2
    rw [R.kind hle, R.kb] at hk
    rw [R.left hle] at ih
    exact Anc.left hk (ih (hsh.internal i hL hk).1)
  | @right i x hk _ ih =>
    intro hL
    have hle := (hsh.live_range i hL).2
    rw [R.kind hle, R.kb] at hk
    rw [R.right hle] at ih
    exact Anc.right hk (ih (hsh.internal i hL hk).2.1)

theorem tableWF_reloc_mem (R : RelocHyp m m' d be T T') (hsep : Sep m T) (hsep' : Sep m' T')
    (hsh : Shape m d be T L) (hex : Extra m d be T L) : Shape m' d be T' L ∧ Extra m' d be T' L := by
  have hS : (hdr m T 8).toNat ≤ 2 ^ 20 := hex.bnd.1
  have hle : ∀ i, L i → i.toNat ≤ CAP m T := fun i hi => (hsh.live_range i hi).2
  have hl := lay_of_sep hsep
  refine ⟨⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [R.cnt, R.cap]; exact hsh.cnt_le
  · intro i hi; rw [R.cap]; exact hsh.live_range i hi
  · intro h56 i hi; rw [R.h56] at h56; exact hsh.root_empty h56 i hi
  · intro hne
    rw [R.h56] at hne ⊢
    obtain ⟨hL, hp⟩ := hsh.root_live hne
    exact ⟨hL, by rw [R.par (hle _ hL)]; exact hp⟩
  · intro i hi hk
    have hi' := hle i hi
    rw [R.kb, R.kind hi'] at hk
    obtain ⟨hlft, hr, hpl, hpr, hne, hkl, hkr⟩ := hsh.internal i hi hk
    have hl' := hle _ hlft
    have hr' := hle _ hr
    rw [R.left hi', R.right hi', R.par hl', R.par hr', R.kind hi', R.kind hl', R.kind hr']
    exact ⟨hlft, hr, hpl, hpr, hne, hkl, hkr⟩
  · intro i hi hne
    rw [R.h56] at hne
    have hi' := hle i hi
    obtain ⟨hp, hk, hc⟩ := hsh.parent i hi hne
    have hp' := hle _ hp
    rw [R.par hi', R.kb, R.kind hp', R.left hp', R.right hp']
    exact ⟨hp, hk, hc⟩
  · intro j hj
    rw [R.cnt] at hj
    have hj' : j.toNat ≤ CAP m T := by have := hsh.cnt_le; omega
    rw [R.ord j hj']
    obtain ⟨hL, hk, hr⟩ := hsh.order_live j hj
    have h' := hle _ hL
    rw [R.kb, R.kind h', R.right h']
    exact ⟨hL, hk, hr⟩
  · intro i hi hk
    have hi' := hle i hi
    rw [R.kb, R.kind hi'] at hk
    obtain ⟨j, hj, he⟩ := hsh.leaf_ordered i hi hk
    have hj' : j.toNat ≤ CAP m T := by have := hsh.cnt_le; omega
    exact ⟨j, by rw [R.cnt]; exact hj, by rw [R.ord j hj']; exact he⟩
  · intro j hj
    rw [R.cnt] at hj
    have hj' : j.toNat ≤ CAP m T := by have := hsh.cnt_le; omega
    rw [R.ord j hj', R.h56]
    have hL := (hsh.order_live j hj).1
    refine R.walk hsh ?_ (hsh.walk j hj) (by
      by_cases h0 : hdr m T 56 = 0
      · exact Or.inl h0
      · exact Or.inr (hsh.root_live h0).1)
    intro b hb
    exact R.kbit hsep hS (hle _ hL) hb
  · intro i hi; rw [R.kind (hle i hi), R.kb]; exact hsh.kind_le i hi
  · unfold NX; rw [R.h64]; exact hex.nx_pos
  · unfold NX; rw [R.h64, R.cap]; exact hex.nx_le
  · intro i hi; unfold NX; rw [R.h64]; exact hex.live_lt i hi
  · obtain ⟨fl, hfc, hnd, hfl, hlen⟩ := hex.free
    refine ⟨fl, ?_, hnd, ?_, ?_⟩
    · rw [R.h72]
      refine R.free hfc (fun x hx => ?_)
      have := (hfl x hx).2.1
      have h2 := hex.nx_le
      unfold NX at this h2
      omega
    · intro x hx; unfold NX; rw [R.h64]; exact hfl x hx
    · unfold NX; rw [R.cnt, R.h64]; exact hlen
  · intro i hi hk x y hx hy hxk hyk c hc
    have hi' := hle i hi
    rw [R.kb, R.kind hi'] at hk
    rw [R.kind hi'] at hc
    have hx' := R.anc hsh hx hi
    have hy' := R.anc hsh hy hi
    have hLx := anc_live hsh hx' hi
    have hLy := anc_live hsh hy' hi
    rw [R.kb, R.kind (hle x hLx)] at hxk
    rw [R.kb, R.kind (hle y hLy)] at hyk
    have hcb : c.toNat < (KB m T).toNat := by
      have := hsh.kind_le i hi
      omega
    rw [R.kbit hsep hS (hle x hLx) hcb, R.kbit hsep hS (hle y hLy) hcb]
    exact hex.pfx i hi hk x y hx' hy' hxk hyk c hc
  · rw [R.h8, R.cap]; exact hex.bnd

theorem tableWF_reloc {σ : Type} {s s' : PanSemStateFiniteExact 64 σ} {T T' : BitVec 64}
    (hwf : TableWF s T) (hsep' : Sep s'.memory T') (hd : s'.memaddrs = s.memaddrs)
    (hb : s'.be = s.be) (R : RelocHyp s.memory s'.memory s.memaddrs s.be T T') : TableWF s' T' := by
  obtain ⟨hsep, L, hsh, hex⟩ := hwf
  obtain ⟨a, b⟩ := tableWF_reloc_mem R hsep hsep' hsh hex
  exact ⟨hsep', L, by rw [hd, hb]; exact ⟨a, b⟩⟩

end reloc

end InitECandidate.Solver.Spec.Inv
