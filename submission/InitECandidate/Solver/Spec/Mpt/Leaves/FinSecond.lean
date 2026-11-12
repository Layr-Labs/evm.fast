import InitECandidate.Solver.Spec.Mpt.Leaves.FinStep

/-!
# `_node_rlp_finish`: the second pass (the encoding)

After the header the second pass writes the path and value (leaf), the path and the child
reference (extension), or the 16 child references and the value (branch). Every length it adds
equals the one the first pass (or `_node_rlp_begin`, through `RC`) added: the cells the lengths
depend on are not written in between (`node_prot`: node cells other than the hash cells `+24`
are below the entry `heap_ptr`, outside the keccak buffers and no child's hash cell; the value's
first byte is covered by `ValSep`).

* `fin_non3`: the leaf and extension arm;
* `fin_br`: the branch arm.

Both end with a ghost offset `off` with `off = hl + payload` (mod `2^64`).
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

/-! ## Protected cells -/

/-- The hash cells of the children of `ND` (the third kind of `CacheW` cell). -/
def CW (M : MemSafe.Mem) (ND a : BitVec 64) : Prop :=
  ∃ c : BitVec 64, heapBase ≤ c.toNat ∧ a = c + 24 ∧
    ((rd M ND = 2 ∧ c = rd M (ND + 48)) ∨ (rd M ND = 3 ∧ ∃ i : Nat, i < 16 ∧ c = rd M (slot ND i)))

/-- The cells `node_write_ref` may write besides fresh ones. -/
def WB (M : MemSafe.Mem) (ND ks kp : BitVec 64) (a : BitVec 64) : Prop := CW M ND a ∨ KIn ks kp a

theorem cw_node {M : MemSafe.Mem} {Nd : BitVec 64 → Prop} {HP : Nat} (hsh : NdShape M Nd HP)
    {ND a : BitVec 64} (hND : Nd ND) (h : CW M ND a) : ∃ c, Nd c ∧ a = c + 24 := by
  obtain ⟨c, hc, rfl, h2 | h3⟩ := h
  · obtain ⟨hk, rfl⟩ := h2
    rcases (hsh ND hND).2.2.2.1 hk with h | h
    · omega
    · exact ⟨_, h, rfl⟩
  · obtain ⟨hk, i, hi, rfl⟩ := h3
    rcases (hsh ND hND).2.2.2.2 hk i hi with h | h
    · omega
    · exact ⟨_, h, rfl⟩

/-- A node cell other than the hash cell: below `HP`, outside the keccak buffers, no child's
hash cell. -/
theorem node_prot {s0 : State σ} {Nd : BitVec 64 → Prop} {HP : Nat} {ks kp : BitVec 64}
    (hT : TrieOK s0 Nd HP) (hks : gword s0 gKst = some ks) (hkp : gword s0 gKpad = some kp)
    (hHP : HP ≤ heapEnd) {b : BitVec 64} (hb : Nd b) {k : Nat} (hk : k < nsz (rd s0.memory b))
    (h24 : k ≠ 24) :
    (b + BitVec.ofNat 64 k).toNat < HP ∧ ¬ KIn ks kp (b + BitVec.ofNat 64 k) ∧
      ∀ c, Nd c → b + BitVec.ofNat 64 k ≠ c + 24 := by
  obtain ⟨hsh, hd, ⟨ks', kp', h1, h2, -, -, -, -, -, -, h9⟩, -⟩ := hT
  rw [hks] at h1
  cases h1
  rw [hkp] at h2
  cases h2
  have hE := heapEnd_lt'
  obtain ⟨hb1, hb2, -⟩ := hsh b hb
  have e := toNat_add_k (a := b) (k := k) (by omega)
  refine ⟨by omega, fun hK => ?_, fun c hc he => ?_⟩
  · obtain ⟨k1, k2⟩ := h9 b hb
    rcases hK with ⟨x1, x2⟩ | ⟨x1, x2⟩
    · rcases k1 with y | y <;> omega
    · rcases k2 with y | y <;> omega
  · obtain ⟨hc1, hc2, -⟩ := hsh c hc
    have hn := nsz_ge (rd s0.memory c)
    have e2 : (c + BitVec.ofNat 64 24).toNat = c.toNat + 24 := toNat_add_k (by omega)
    have := congrArg BitVec.toNat he
    rw [e, show (c + 24 : BitVec 64) = c + BitVec.ofNat 64 24 from rfl, e2] at this
    by_cases hbc : b = c
    · subst hbc; omega
    · rcases hd b c hb hc hbc with y | y <;> omega

theorem not_wb {s0 : State σ} {Nd : BitVec 64 → Prop} {HP : Nat} {ND ks kp x : BitVec 64}
    (hsh : NdShape s0.memory Nd HP) (hND : Nd ND) (hK : ¬ KIn ks kp x)
    (hc : ∀ c, Nd c → x ≠ c + 24) : ¬ WB s0.memory ND ks kp x := by
  rintro (h | h)
  · obtain ⟨c, hc', rfl⟩ := cw_node hsh hND h
    exact hc c hc' rfl
  · exact hK h

/-! ## Lengths -/

theorem encLenN_zero (x y : BitVec 64) : encLenN x 0 = encLenN y 0 := by
  unfold encLenN; simp

theorem valLen_eq (fb n : BitVec 64) : valLen fb n = BitVec.ofNat 64 (encLenN fb n) := by
  unfold valLen
  rw [encLen_eq]
  by_cases h : n = 0
  · subst h; rw [if_pos rfl, encLenN_zero 0 fb]
  · rw [if_neg h]

def brSumN (M : MemSafe.Mem) (ND : BitVec 64) : Nat → Nat
  | 0 => 0
  | n + 1 => brSumN M ND n + (RL M (rd M (slot ND n))).toNat

theorem brSum_ofNat (M : MemSafe.Mem) (ND : BitVec 64) :
    ∀ n, BitVec.ofNat 64 (brSumN M ND n) = brSum M ND n
  | 0 => rfl
  | n + 1 => by
      rw [brSumN, brSum, ← BitVec.ofNat_add_ofNat, brSum_ofNat M ND n, ofNat_toNat_self]

theorem ofNat_add3 (a b c : Nat) :
    BitVec.ofNat 64 (a + b + c) = BitVec.ofNat 64 a + BitVec.ofNat 64 b + BitVec.ofNat 64 c := by
  rw [BitVec.ofNat_add_ofNat, BitVec.ofNat_add_ofNat]

/-! ## The finish context -/

structure FinCtx (s0 : State σ) (p p1 : Ptrs) (Nd : BitVec 64 → Prop) (ND ks kp BUF : BitVec 64) :
    Prop where
  hp : ptrsOf s0 = some p
  ord : p.Ordered
  trie : TrieOK s0 Nd p.hp
  nd : Nd ND
  kok : KOK s0 ks kp
  buf : BUF.toNat = p.hp
  le1 : p.hp ≤ p1.hp

theorem FinCtx.hp8 {s0 : State σ} {p p1 : Ptrs} {Nd : BitVec 64 → Prop} {ND ks kp BUF : BitVec 64}
    (h : FinCtx s0 p p1 Nd ND ks kp BUF) : p.hp % 8 = 0 := h.ord.2.2.2.2.2.1

theorem FinCtx.hpE {s0 : State σ} {p p1 : Ptrs} {Nd : BitVec 64 → Prop} {ND ks kp BUF : BitVec 64}
    (h : FinCtx s0 p p1 Nd ND ks kp BUF) : p.hp ≤ heapEnd := h.ord.2.1

/-- A node cell of `Nd` other than the hash cell, read in a second-pass state. -/
theorem s2_node {s0 : State σ} {p p1 : Ptrs} {Nd : BitVec 64 → Prop} {ND ks kp BUF : BitVec 64}
    (hX : FinCtx s0 p p1 Nd ND ks kp BUF) {FR K PL CB CL HL : BitVec 64}
    {Wx : BitVec 64 → Prop} {off ex : Nat} {t : State σ}
    (h : S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wx off ex t)
    (hW : ∀ x, Wx x → WB s0.memory ND ks kp x) {b : BitVec 64} (hb : Nd b) {k : Nat}
    (hk : k < nsz (rd s0.memory b)) (h24 : k ≠ 24) :
    t.memory (b + BitVec.ofNat 64 k) = s0.memory (b + BitVec.ofNat 64 k) := by
  obtain ⟨h1, h2, h3⟩ := node_prot hX.trie hX.kok.1 hX.kok.2.1 hX.hpE hb hk h24
  exact s2_read h h1 fun hx => not_wb hX.trie.1 hX.nd h2 h3 (hW _ hx)

theorem rd_of_mem {M M' : MemSafe.Mem} {a : BitVec 64} (h : M' a = M a) : rd M' a = rd M a := by
  unfold rd; rw [h]

/-! ## The leaf and extension arm -/

theorem fin_non3 (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) {s0 : State σ} {p p1 : Ptrs} {Nd : BitVec 64 → Prop}
    {FR ND PL0 CB CL ks kp BUF : BitVec 64} (hX : FinCtx s0 p p1 Nd ND ks kp BUF)
    (hK3 : rd s0.memory ND ≠ 3) (hrk : RecKind (rd s0.memory ND))
    (hRC2 : rd s0.memory ND = 2 → PL0 = encLen (ld8W s0 CB) CL)
    (hRC1 : rd s0.memory ND = 1 → PL0 = encLen (ld8W s0 CB) CL +
      valLen (ld8W s0 (rd s0.memory (ND + 48))) (rd s0.memory (ND + 56)))
    (hCB : (panByteAlignHOL CB).toNat < p.hp) :
    Hoare σ X (fun t => S2 s0 p1 p.hp FR ND (rd s0.memory ND) (pl1 s0 ND PL0) CB CL
        (hdrLen (pl1 s0 ND PL0)) BUF (fun _ => False)
        (MemSafe.Helpers.hdrLen (pl1 s0 ND PL0).toNat) 0 t)
      finNon3
      (fun r t => r = none ∧ ∃ off, S2 s0 p1 p.hp FR ND (rd s0.memory ND) (pl1 s0 ND PL0) CB CL
        (hdrLen (pl1 s0 ND PL0)) BUF (WB s0.memory ND ks kp) off 0 t ∧
        BitVec.ofNat 64 off = hdrLen (pl1 s0 ND PL0) + pl1 s0 ND PL0) := by
  set K := rd s0.memory ND with hK
  set PL := pl1 s0 ND PL0 with hPL
  set HL := hdrLen PL with hHL
  set hlN := MemSafe.Helpers.hdrLen PL.toNat with hhlN
  have hHL' : HL = BitVec.ofNat 64 hlN := hdrLen_eq PL
  have hb8 := hX.hp8
  have hbuf : p.hp ≤ BUF.toNat := by rw [hX.buf]
  have hE := heapEnd_lt'
  let Wf : BitVec 64 → Prop := fun _ => False
  let WBx := WB s0.memory ND ks kp
  let QN : Option (PanSemResultExact 64) → State σ → Prop := fun r t => r = none ∧ ∃ off,
    S2 s0 p1 p.hp FR ND K PL CB CL HL BUF WBx off 0 t ∧ BitVec.ofNat 64 off = HL + PL
  have hQN : ∀ x, S2N x → ∀ r (t : State σ) o, QN r t →
      QN r { t with locals := t.locals.resVarEq (x, o) } :=
    fun x hx r t o ⟨hr, off, h, he⟩ => ⟨hr, off, s2_res h hx o, he⟩
  have hWf : ∀ x, Wf x → WBx x := fun _ h => h.elim
  set e1 := encLenN (ld8W s0 CB) CL with he1
  unfold finNon3
  refine hoare_pre (P := fun t => S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wf hlN 0 t ∧
    (fun _ => True) t.locals) ?_ fun t _ h => ⟨h, trivial⟩
  refine call_enc hC hA hT (Lx := fun _ => True) (SV := CB) (NV := CL) (E := e1) hbuf hb8 s2N_w (fun _ _ _ => trivial)
    (fun t h _ v hv => by rw [ev_lw h.fl.cbuf] at hv; exact (Option.some.inj hv).symm)
    (fun t h _ v hv => by rw [ev_lw h.fl.clen] at hv; exact (Option.some.inj hv).symm)
    (fun t h _ => by rw [ld8W_congr h.be (s2_read h hCB (fun h => h))]) (hQN _ s2N_w)
    fun t h _ hw => ?_
  refine hoare_seq (hoare_pre (step_off (Lx := fun _ => True) (fun _ _ _ => trivial))
    fun u _ hu => by subst hu; exact ⟨h, hw, trivial⟩) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_ite ?_ ?_
  · -- the leaf: `var w2 = rlp_encode_bytes(buf + off, lds (node + 48), lds (node + 56))`
    refine hoare_pre (P := fun u => S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wf (hlN + e1) 0 u ∧
        K = 1) ?_
      fun u _ ⟨⟨_, h, _⟩, w, hw, hw0⟩ => ⟨h, equal_true (cmp_val_true hw hw0 (ev_lw h.fl.k)
        (ev_cw _ 1))⟩
    refine hoare_pure fun hK1 => ?_
    refine hoare_pre (P := fun u => S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wf (hlN + e1) 0 u ∧
      (fun _ => True) u.locals) ?_ fun u _ h => ⟨h, trivial⟩
    have hsz : nsz (rd s0.memory ND) = 64 := by rw [← hK, hK1]; exact nsz_1
    set V1 := rd s0.memory (ND + BitVec.ofNat 64 48) with hV1
    set L1 := rd s0.memory (ND + BitVec.ofNat 64 56) with hL1
    set e2 := encLenN (ld8W s0 V1) L1 with he2
    have hva : ValAl p.hp V1 L1 := (hX.trie.2.2.2 ND hX.nd).1 hK1
    refine call_enc hC hA hT (Lx := fun _ => True) (SV := V1) (NV := L1) (E := e2) hbuf hb8 s2N_w2
      (fun _ _ _ => trivial)
      (fun u h _ v hv => by
        rw [ev_ldN h.fl.node hv, rd_of_mem (s2_node hX h hWf hX.nd (k := 48) (by omega)
          (by decide))])
      (fun u h _ v hv => by
        rw [ev_ldN h.fl.node hv, rd_of_mem (s2_node hX h hWf hX.nd (k := 56) (by omega)
          (by decide))])
      (fun u h _ => by
        by_cases hL : L1 = 0
        · rw [he2, hL]; exact encLenN_zero _ _
        · obtain ⟨-, h2⟩ := hva hL
          rw [ld8W_congr h.be (s2_read h h2 (fun h => h))])
      (hQN _ s2N_w2) fun u h _ hw => ?_
    refine hoare_post (hoare_pre (step_off (Lx := fun _ => True) (fun _ _ _ => trivial))
      fun u' _ hu => by subst hu; exact ⟨h, hw, trivial⟩) ?_
    intro r u' _ _ ⟨hr, h', _⟩
    refine ⟨hr, _, s2_wx h' hWf, ?_⟩
    have hP : PL = encLen (ld8W s0 CB) CL + valLen (ld8W s0 V1) L1 := by
      rw [hPL, pl1, ← hK, if_neg (by rw [hK1]; decide), if_neg hK3]; exact hRC1 hK1
    rw [hP, encLen_eq, valLen_eq, ofNat_add3, hHL', BitVec.add_assoc]
  · -- the extension: `var w3 = node_write_ref(lds (node + 48), buf + off)`
    refine hoare_pre (P := fun u => S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wf (hlN + e1) 0 u ∧
        K = 2) ?_ fun u _ ⟨⟨_, h, _⟩, hc⟩ => ⟨h, by
          have := equal_false (cmp_val_false hc (ev_lw h.fl.k) (ev_cw _ 1))
          rcases hrk with h1 | h2 | h3
          · exact absurd h1 this
          · exact h2
          · exact absurd h3 hK3⟩
    refine hoare_pure fun hK2 => ?_
    refine hoare_pre (P := fun u => S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wf (hlN + e1) 0 u ∧
      (fun _ => True) u.locals) ?_ fun u _ h => ⟨h, trivial⟩
    have hsz : nsz (rd s0.memory ND) = 56 := by rw [← hK, hK2]; exact nsz_2
    set C48 := rd s0.memory (ND + BitVec.ofNat 64 48) with hC48
    have hchild : C48.toNat < heapBase ∨ Nd C48 := (hX.trie.1 ND hX.nd).2.2.2.1 hK2
    have hNdc : C48 ≠ 0 → (C48 = 0 ∨ heapBase ≤ C48.toNat) → Nd C48 := fun hne hz => by
      rcases hz with h0 | h0
      · exact absurd h0 hne
      · rcases hchild with h1 | h1
        · omega
        · exact h1
    refine call_ref hC hA hT hNS hX.kok (Lx := fun _ => True) (Cv := C48) (RLs := RL s0.memory C48)
      (Wx := Wf) (Wx2 := WBx) hbuf hb8 hX.le1 s2N_w3 (fun _ _ _ => trivial)
      (fun u h _ v hv => by
        rw [ev_ldN h.fl.node hv, rd_of_mem (s2_node hX h hWf hX.nd (k := 48) (by omega)
          (by decide))])
      ?_ hWf (fun a h => Or.inr h) (fun hb => Or.inl ⟨C48, hb, rfl, Or.inl ⟨hK2, rfl⟩⟩)
      (hQN _ s2N_w3) fun u h _ hw => ?_
    · intro u h _ hz
      refine RL_congr (fun hne => ?_) (fun hne => ?_)
      · have hN := hNdc hne hz
        have := s2_node hX h hWf hN (k := 0) (by have := nsz_ge (rd s0.memory C48); omega)
          (by decide)
        rw [show C48 + BitVec.ofNat 64 0 = C48 by simp] at this
        exact rd_of_mem this
      · have hN := hNdc hne hz
        exact rd_of_mem (s2_node hX h hWf hN (k := 16) (by have := nsz_ge (rd s0.memory C48); omega)
          (by decide))
    refine hoare_post (hoare_pre (step_off (Lx := fun _ => True) (fun _ _ _ => trivial))
      fun u' _ hu => by subst hu; exact ⟨h, by rw [ofNat_toNat_self]; exact hw, trivial⟩) ?_
    intro r u' _ _ ⟨hr, h', _⟩
    refine ⟨hr, _, h', ?_⟩
    have hP : PL = encLen (ld8W s0 CB) CL + RL s0.memory C48 := by
      rw [hPL, pl1, ← hK, if_pos hK2, hRC2 hK2]
    rw [hP, encLen_eq, ofNat_add3, ofNat_toNat_self, hHL', BitVec.add_assoc]

/-! ## The branch arm -/

theorem brSumN_succ (M : MemSafe.Mem) (ND : BitVec 64) (n : Nat) :
    brSumN M ND (n + 1) = brSumN M ND n + (RL M (rd M (slot ND n))).toNat := rfl

theorem fin_br (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) {s0 : State σ} {p p1 : Ptrs} {Nd : BitVec 64 → Prop}
    {FR ND PL0 CB CL ks kp BUF : BitVec 64} (hX : FinCtx s0 p p1 Nd ND ks kp BUF)
    (hK3 : rd s0.memory ND = 3) (hRC3 : PL0 = 0) :
    Hoare σ X (fun t => S2 s0 p1 p.hp FR ND (rd s0.memory ND) (pl1 s0 ND PL0) CB CL
        (hdrLen (pl1 s0 ND PL0)) BUF (fun _ => False)
        (MemSafe.Helpers.hdrLen (pl1 s0 ND PL0).toNat) 0 t)
      fin3
      (fun r t => r = none ∧ ∃ off, S2 s0 p1 p.hp FR ND (rd s0.memory ND) (pl1 s0 ND PL0) CB CL
        (hdrLen (pl1 s0 ND PL0)) BUF (WB s0.memory ND ks kp) off 0 t ∧
        BitVec.ofNat 64 off = hdrLen (pl1 s0 ND PL0) + pl1 s0 ND PL0) := by
  set K := rd s0.memory ND with hK
  set PL := pl1 s0 ND PL0 with hPL
  set HL := hdrLen PL with hHL
  set hlN := MemSafe.Helpers.hdrLen PL.toNat with hhlN
  have hHL' : HL = BitVec.ofNat 64 hlN := hdrLen_eq PL
  have hb8 := hX.hp8
  have hbuf : p.hp ≤ BUF.toNat := by rw [hX.buf]
  have hE := heapEnd_lt'
  have hsz : nsz (rd s0.memory ND) = 176 := by rw [← hK, hK3]; exact nsz_3
  let Wf : BitVec 64 → Prop := fun _ => False
  let WBx := WB s0.memory ND ks kp
  let QN : Option (PanSemResultExact 64) → State σ → Prop := fun r t => r = none ∧ ∃ off,
    S2 s0 p1 p.hp FR ND K PL CB CL HL BUF WBx off 0 t ∧ BitVec.ofNat 64 off = HL + PL
  have hQN : ∀ x, S2N x → ∀ r (t : State σ) o, QN r t →
      QN r { t with locals := t.locals.resVarEq (x, o) } :=
    fun x hx r t o ⟨hr, off, h, he⟩ => ⟨hr, off, s2_res h hx o, he⟩
  have hWB : ∀ x, WBx x → WBx x := fun _ h => h
  unfold fin3
  refine hoare_dec fun t _ h v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  refine hoare_conseq (Q := QN) ?_ (fun _ _ h => h) fun r u _ _ hq => hQN _ s2N_j r u _ hq
  let Inv : State σ → Prop := fun u => ∃ J : BitVec 64, J.toNat ≤ 16 ∧
    u.locals.lookup (nm "j") = some (.val (.word J)) ∧
    S2 s0 p1 p.hp FR ND K PL CB CL HL BUF WBx (hlN + brSumN s0.memory ND J.toNat) 0 u
  refine hoare_seq (R := fun r u => r = none ∧
      S2 s0 p1 p.hp FR ND K PL CB CL HL BUF WBx (hlN + brSumN s0.memory ND 16) 0 u) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (P := Inv) (hoare_while (fun s ⟨J, h1, h2, h3⟩ => ⟨J, h1, h2, s2_clock h3⟩)
      ?_ ?_) fun u _ hu => ?_
    · refine hoare_post (Q := fun r u => r = none ∧ Inv u) ?_ fun r u _ _ ⟨hr, h⟩ =>
        ⟨fun _ => h, fun h' => (by subst hr; cases h'), fun h' => (by subst hr; cases h'),
          fun v h' => (by subst hr; cases h')⟩
      refine hoare_pre (P := fun u => ∃ J : BitVec 64, J.toNat < 16 ∧
          u.locals.lookup (nm "j") = some (.val (.word J)) ∧
          S2 s0 p1 p.hp FR ND K PL CB CL HL BUF WBx (hlN + brSumN s0.memory ND J.toNat) 0 u) ?_
        fun u _ ⟨⟨J, hJ, hj, h⟩, hc⟩ => ⟨J, by
          obtain ⟨wc, hwc, hwc0⟩ := condTrue_iff.mp hc
          exact less16 hJ (cmp_val_true hwc hwc0 (ev_lw hj) (ev_cw _ 16)), hj, h⟩
      refine hoare_exists fun J => ?_
      refine hoare_pre (P := fun u =>
          (S2 s0 p1 p.hp FR ND K PL CB CL HL BUF WBx (hlN + brSumN s0.memory ND J.toNat) 0 u ∧
          (fun m => m.lookup (nm "j") = some (.val (.word J))) u.locals) ∧ J.toNat < 16) ?_
        fun u _ ⟨hJ, hj, h⟩ => ⟨⟨h, hj⟩, hJ⟩
      refine hoare_pure fun hJ => ?_
      unfold finL2
      set Cv := rd s0.memory (slot ND J.toNat) with hCv
      have hchild : Cv.toNat < heapBase ∨ Nd Cv := (hX.trie.1 ND hX.nd).2.2.2.2 hK3 J.toNat hJ
      have hNdc : Cv ≠ 0 → (Cv = 0 ∨ heapBase ≤ Cv.toNat) → Nd Cv := fun hne hz => by
        rcases hz with h0 | h0
        · exact absurd h0 hne
        · rcases hchild with h1 | h1
          · omega
          · exact h1
      refine call_ref hC hA hT hNS hX.kok
        (Lx := fun m => m.lookup (nm "j") = some (.val (.word J))) (Cv := Cv)
        (RLs := RL s0.memory Cv) (Wx := WBx) (Wx2 := WBx) hbuf hb8 hX.le1 s2N_w4
        (fun m v h1 => by rw [lookup_update_ne _ _ (by decide)]; exact h1)
        ?_ ?_ hWB (fun a h => Or.inr h) (fun hb => Or.inl ⟨Cv, hb, rfl, Or.inr ⟨hK3, J.toNat, hJ, rfl⟩⟩)
        ?_ fun u h hL hw => ?_
      · intro u h hL v hv
        rw [ev_slotE h.fl.node hL hJ hv, hCv]
        congr 2
        exact rd_of_mem (s2_node hX h hWB hX.nd (k := 32 + 8 * J.toNat) (by omega) (by omega))
      · intro u h hL hz
        refine RL_congr (fun hne => ?_) (fun hne => ?_)
        · have := s2_node hX h hWB (hNdc hne hz) (k := 0)
            (by have := nsz_ge (rd s0.memory Cv); omega) (by decide)
          rw [show Cv + BitVec.ofNat 64 0 = Cv by simp] at this
          exact rd_of_mem this
        · exact rd_of_mem (s2_node hX h hWB (hNdc hne hz) (k := 16)
            (by have := nsz_ge (rd s0.memory Cv); omega) (by decide))
      · intro r u o ⟨hr, J', hJ', hj', h'⟩
        refine ⟨hr, J', hJ', ?_, s2_res h' s2N_w4 o⟩
        rw [lookup_resVarEq_ne _ _ (by decide)]; exact hj'
      -- `off = off + w4; j = j + 1`
      refine hoare_seq (hoare_pre (step_off
          (Lx := fun m => m.lookup (nm "j") = some (.val (.word J)))
          (fun m v h1 => by rw [lookup_update_ne _ _ (by decide)]; exact h1))
        fun u' _ hu => by subst hu; exact ⟨h, by rw [ofNat_toNat_self]; exact hw, hL⟩)
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      refine hoare_assign fun u' _ ⟨_, h', hj'⟩ v hv _ => ?_
      rw [ev_add2 (ev_lw hj') (ev_cw _ 1)] at hv
      cases hv
      have e1 : (J + BitVec.ofNat 64 1).toNat = J.toNat + 1 := toNat_add_k (by omega)
      refine ⟨rfl, J + BitVec.ofNat 64 1, by omega, lk_set_self _ _ _, ?_⟩
      rw [e1, brSumN_succ, ← Nat.add_assoc]
      exact s2_upd h' s2N_j _
    · intro u _ ⟨J, hJ, hj, h⟩ hc
      have h16 := ge16 J.toNat hJ (by
        rw [ofNat_toNat_self]; exact cmp_val_false hc (ev_lw hj) (ev_cw _ 16))
      rw [h16] at h
      exact ⟨rfl, h⟩
    · subst hu
      exact ⟨0, by decide, lk_set_self _ _ _, s2_wx (s2_upd h s2N_j _) fun _ h => h.elim⟩
  -- `var w5 = rlp_encode_bytes(buf + off, lds (node + 160), lds (node + 168)); off += w5`
  refine hoare_pre (P := fun u => S2 s0 p1 p.hp FR ND K PL CB CL HL BUF WBx
    (hlN + brSumN s0.memory ND 16) 0 u ∧ (fun _ => True) u.locals) ?_ fun u _ h => ⟨h.2, trivial⟩
  set V3 := rd s0.memory (ND + BitVec.ofNat 64 160) with hV3
  set L3 := rd s0.memory (ND + BitVec.ofNat 64 168) with hL3
  set e5 := encLenN (ld8W s0 V3) L3 with he5
  have hvo : ValOK s0 Nd p.hp V3 L3 := (hX.trie.2.2.2 ND hX.nd).2 hK3
  refine call_enc hC hA hT (Lx := fun _ => True) (SV := V3) (NV := L3) (E := e5) hbuf hb8 s2N_w5
    (fun _ _ _ => trivial)
    (fun u h _ v hv => by
      rw [ev_ldN h.fl.node hv, rd_of_mem (s2_node hX h hWB hX.nd (k := 160) (by omega)
        (by decide))])
    (fun u h _ v hv => by
      rw [ev_ldN h.fl.node hv, rd_of_mem (s2_node hX h hWB hX.nd (k := 168) (by omega)
        (by decide))])
    (fun u h _ => by
      by_cases hL : L3 = 0
      · rw [he5, hL]; exact encLenN_zero _ _
      · obtain ⟨-, h2, h3, h4⟩ := hvo hL
        have hnw : ¬ WBx (panByteAlignHOL V3) := not_wb hX.trie.1 hX.nd
          (fun hk => h4 (kIn_kbuf hX.kok hk)) fun c hc he => h3 c hc (Or.inr (Or.inr he))
        rw [ld8W_congr h.be (s2_read h h2 hnw)])
    (hQN _ s2N_w5) fun u h _ hw => ?_
  refine hoare_post (hoare_pre (step_off (Lx := fun _ => True) (fun _ _ _ => trivial))
    fun u' _ hu => by subst hu; exact ⟨h, hw, trivial⟩) ?_
  intro r u' _ _ ⟨hr, h', _⟩
  refine ⟨hr, _, h', ?_⟩
  have hP : PL = brSum s0.memory ND 16 + valLen (ld8W s0 V3) L3 := by
    rw [hPL, pl1, ← hK, if_neg (by rw [hK3]; decide), if_pos hK3, hRC3]
    simp
    rfl
  rw [hP, valLen_eq, ofNat_add3, brSum_ofNat, hHL', BitVec.add_assoc]

end InitECandidate.Solver.Spec.Mpt.Leaves
