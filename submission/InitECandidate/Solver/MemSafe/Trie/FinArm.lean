import InitECandidate.Solver.MemSafe.Trie.FinG

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# The leaf / extension arm of the second pass, exception-inclusive
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

theorem hoareG_pure {P : State σ → Prop} {φ : Prop} {b : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : φ → HoareG σ X P b Q) :
    HoareG σ X (fun s => P s ∧ φ) b Q :=
  fun s hs ⟨hp, hφ⟩ hg => h hφ s hs hp hg

theorem hoareG_exists {α : Type} {P : α → State σ → Prop} {b : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : ∀ a, HoareG σ X (P a) b Q) :
    HoareG σ X (fun s => ∃ a, P a s) b Q :=
  fun s hs ⟨a, ha⟩ hg => h a s hs ha hg

/-- The cells a finish second pass may write (no fresh part), as the `Wx` of `S2`. -/
def WBx (s0 : State σ) (ND ks kp : BitVec 64) : BitVec 64 → Prop := WB s0.memory ND ks kp

theorem wb_ok {s0 : State σ} {ND ks kp : BitVec 64} (hK : KOK s0 ks kp) :
    ∀ x, WB s0.memory ND ks kp x → CacheW s0.memory ND x ∨ KBuf s0 x := by
  intro x hx
  rcases hx with ⟨c, hc, rfl, h⟩ | hk
  · exact Or.inl (Or.inr (Or.inr ⟨c, hc, rfl, h⟩))
  · exact Or.inr (kIn_kbuf hK hk)

/-- The arm's post. -/
def ArmQ (s0 : State σ) (p p1 : Ptrs) (FR ND K PL CB CL HL BUF ks kp : BitVec 64) :
    Option (PanSemResultExact 64) → State σ → Prop :=
  PG (fun t => ∃ off, S2 s0 p1 p.hp FR ND K PL CB CL HL BUF (WB s0.memory ND ks kp) off 0 t ∧
      BitVec.ofNat 64 off = HL + PL) (FEx s0 p ND)

theorem armQ_res {s0 : State σ} {p p1 : Ptrs} {FR ND K PL CB CL HL BUF ks kp : BitVec 64}
    {x : MlS} (hx : S2N x) (o : Option (ValueHOL 64)) {r} {t : State σ}
    (h : ArmQ s0 p p1 FR ND K PL CB CL HL BUF ks kp r t) :
    ArmQ s0 p p1 FR ND K PL CB CL HL BUF ks kp r { t with locals := t.locals.resVarEq (x, o) } :=
  pG_res (fun t ⟨off, h, he⟩ => ⟨off, s2_res h hx o, he⟩) (fun t h => fEx_locals _ h) h

theorem fin_non3G (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X)
    (hesc : CalleeEscFree σ X (nm "rlp_encode_bytes")) {s0 : State σ} {p p1 : Ptrs}
    {Nd : BitVec 64 → Prop}
    {FR ND PL0 CB CL ks kp BUF : BitVec 64} (hX : FinCtx s0 p p1 Nd ND ks kp BUF)
    (hK3 : rd s0.memory ND ≠ 3) (hrk : RecKind (rd s0.memory ND))
    (hRC2 : rd s0.memory ND = 2 → PL0 = encLen (ld8W s0 CB) CL)
    (hRC1 : rd s0.memory ND = 1 → PL0 = encLen (ld8W s0 CB) CL +
      valLen (ld8W s0 (rd s0.memory (ND + 48))) (rd s0.memory (ND + 56)))
    (hCB : (panByteAlignHOL CB).toNat < p.hp)
    (hTOT : BUF.toNat + (MemSafe.Helpers.hdrLen (pl1 s0 ND PL0).toNat + (pl1 s0 ND PL0).toNat) ≤ p1.hp)
    (hs1 : rd s0.memory ND = 1 → (pl1 s0 ND PL0).toNat =
      encLenN (ld8W s0 CB) CL + encLenN (ld8W s0 (rd s0.memory (ND + 48))) (rd s0.memory (ND + 56)))
    (hs2 : rd s0.memory ND = 2 → (pl1 s0 ND PL0).toNat =
      encLenN (ld8W s0 CB) CL + (RL s0.memory (rd s0.memory (ND + 48))).toNat) :
    HoareG σ X (fun t => S2 s0 p1 p.hp FR ND (rd s0.memory ND) (pl1 s0 ND PL0) CB CL
        (hdrLen (pl1 s0 ND PL0)) BUF (fun _ => False)
        (MemSafe.Helpers.hdrLen (pl1 s0 ND PL0).toNat) 0 t)
      finNon3
      (ArmQ s0 p p1 FR ND (rd s0.memory ND) (pl1 s0 ND PL0) CB CL (hdrLen (pl1 s0 ND PL0)) BUF ks kp) := by
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
  let QN := ArmQ s0 p p1 FR ND K PL CB CL HL BUF ks kp
  have hQN : ∀ x, S2N x → ∀ r (t : State σ) o, QN r t →
      QN r { t with locals := t.locals.resVarEq (x, o) } :=
    fun x hx r t o h => armQ_res hx o h
  have hWf : ∀ x, Wf x → WBx x := fun _ h => h.elim
  have hWok := wb_ok (s0 := s0) (ND := ND) hX.kok
  set e1 := encLenN (ld8W s0 CB) CL with he1
  unfold finNon3
  refine hoareG_pre (P := fun t => S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wf hlN 0 t ∧
    (fun _ => True) t.locals) ?_ fun t _ h => ⟨h, trivial⟩
  refine gcall_enc hC hA hT hesc (Lx := fun _ => True) (SV := CB) (NV := CL) (E := e1) hbuf hb8 s2N_w
    (fun _ _ _ => trivial)
    (fun t h _ v hv => by rw [ev_lw h.fl.cbuf] at hv; exact (Option.some.inj hv).symm)
    (fun t h _ v hv => by rw [ev_lw h.fl.clen] at hv; exact (Option.some.inj hv).symm)
    (fun t h _ => by rw [ld8W_congr h.be (s2_read h hCB (fun h => h))]) (hQN _ s2N_w)
    fun t h _ hw => ?_
  refine hoareG_seq (hoareG_pre (gstep_off (Lx := fun _ => True) (fun _ _ _ => trivial))
    fun u _ hu => by subst hu; exact ⟨h, hw, trivial⟩) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoareG_ite ?_ ?_
  · -- the leaf
    refine hoareG_pre (P := fun u => S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wf (hlN + e1) 0 u ∧
        K = 1) ?_
      fun u _ ⟨⟨_, h, _⟩, w, hw, hw0⟩ => ⟨h, equal_true (cmp_val_true hw hw0 (ev_lw h.fl.k)
        (ev_cw _ 1))⟩
    refine hoareG_pure fun hK1 => ?_
    refine hoareG_pre (P := fun u => S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wf (hlN + e1) 0 u ∧
      (fun _ => True) u.locals) ?_ fun u _ h => ⟨h, trivial⟩
    have hsz : nsz (rd s0.memory ND) = 64 := by rw [← hK, hK1]; exact nsz_1
    set V1 := rd s0.memory (ND + BitVec.ofNat 64 48) with hV1
    set L1 := rd s0.memory (ND + BitVec.ofNat 64 56) with hL1
    set e2 := encLenN (ld8W s0 V1) L1 with he2
    have hva : ValAl p.hp V1 L1 := (hX.trie.2.2.2 ND hX.nd).1 hK1
    refine gcall_enc hC hA hT hesc (Lx := fun _ => True) (SV := V1) (NV := L1) (E := e2) hbuf hb8 s2N_w2
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
    refine hoareG_conseq (hoareG_pre (gstep_off (Lx := fun _ => True) (fun _ _ _ => trivial))
      fun u' _ hu => by subst hu; exact ⟨h, hw, trivial⟩) (fun _ _ h => h) ?_
    intro r u' _ _ ⟨hr, h', _⟩
    have hP : PL = encLen (ld8W s0 CB) CL + valLen (ld8W s0 V1) L1 := by
      rw [hPL, pl1, ← hK, if_neg (by rw [hK1]; decide), if_neg hK3]; exact hRC1 hK1
    refine ⟨fun _ => ⟨_, s2_wx h' hWf, ?_⟩, fun r' hr' => by rw [hr] at hr'; cases hr'⟩
    rw [hP, encLen_eq, valLen_eq, ofNat_add3, hHL', BitVec.add_assoc]
  · -- the extension
    refine hoareG_pre (P := fun u => S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wf (hlN + e1) 0 u ∧
        K = 2) ?_ fun u _ ⟨⟨_, h, _⟩, hc⟩ => ⟨h, by
          have := equal_false (cmp_val_false hc (ev_lw h.fl.k) (ev_cw _ 1))
          rcases hrk with h1 | h2 | h3
          · exact absurd h1 this
          · exact h2
          · exact absurd h3 hK3⟩
    refine hoareG_pure fun hK2 => ?_
    refine hoareG_pre (P := fun u => S2 s0 p1 p.hp FR ND K PL CB CL HL BUF Wf (hlN + e1) 0 u ∧
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
    have hle : hlN + e1 ≤ hlN + PL.toNat := by have := hs2 hK2; omega
    refine gcall_ref hC hA hT hNS hX0 hX.kok (Lx := fun _ => True) (Cv := C48) (RLs := RL s0.memory C48)
      (Wx := Wf) (Wx2 := WBx) (TOT := hlN + PL.toNat) hbuf hb8 hX.le1 hle hTOT
      (fun x h => h.elim) hWok s2N_w3 (fun _ _ _ => trivial)
      (fun u h _ v hv => by
        rw [ev_ldN h.fl.node hv, rd_of_mem (s2_node hX h hWf hX.nd (k := 48) (by omega)
          (by decide))])
      ?_ hWf (fun a h => Or.inr h) (fun hb => Or.inl ⟨C48, hb, rfl, Or.inl ⟨hK2, rfl⟩⟩)
      (hQN _ s2N_w3) (fun r u hu hr => And.intro (fun h => by cases h) (fun r' hr' => by cases hr'; exact ⟨hr, hu⟩)) fun u h _ hw => ?_
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
    refine hoareG_conseq (hoareG_pre (gstep_off (Lx := fun _ => True) (fun _ _ _ => trivial))
      fun u' _ hu => by subst hu; exact ⟨h, by rw [ofNat_toNat_self]; exact hw, trivial⟩)
      (fun _ _ h => h) ?_
    intro r u' _ _ ⟨hr, h', _⟩
    have hP : PL = encLen (ld8W s0 CB) CL + RL s0.memory C48 := by
      rw [hPL, pl1, ← hK, if_pos hK2, hRC2 hK2]
    refine ⟨fun _ => ⟨_, h', ?_⟩, fun r' hr' => by rw [hr] at hr'; cases hr'⟩
    rw [hP, encLen_eq, ofNat_add3, ofNat_toNat_self, hHL', BitVec.add_assoc]

theorem brSumN_mono (M : MemSafe.Mem) (ND : BitVec 64) {a b : Nat} (h : a ≤ b) :
    brSumN M ND a ≤ brSumN M ND b := by
  induction b with
  | zero => have : a = 0 := by omega
            subst this; exact le_rfl
  | succ b ih =>
      by_cases hab : a ≤ b
      · exact le_trans (ih hab) (by rw [brSumN_succ]; omega)
      · have : a = b + 1 := by omega
        subst this; exact le_rfl

theorem fin_brG (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X)
    (hesc : CalleeEscFree σ X (nm "rlp_encode_bytes")) {s0 : State σ} {p p1 : Ptrs}
    {Nd : BitVec 64 → Prop}
    {FR ND PL0 CB CL ks kp BUF : BitVec 64} (hX : FinCtx s0 p p1 Nd ND ks kp BUF)
    (hK3 : rd s0.memory ND = 3) (hRC3 : PL0 = 0)
    (hTOT : BUF.toNat + (MemSafe.Helpers.hdrLen (pl1 s0 ND PL0).toNat + (pl1 s0 ND PL0).toNat) ≤ p1.hp)
    (hs3 : (pl1 s0 ND PL0).toNat = brSumN s0.memory ND 16 +
      encLenN (ld8W s0 (rd s0.memory (ND + 160))) (rd s0.memory (ND + 168))) :
    HoareG σ X (fun t => S2 s0 p1 p.hp FR ND (rd s0.memory ND) (pl1 s0 ND PL0) CB CL
        (hdrLen (pl1 s0 ND PL0)) BUF (fun _ => False)
        (MemSafe.Helpers.hdrLen (pl1 s0 ND PL0).toNat) 0 t)
      fin3
      (ArmQ s0 p p1 FR ND (rd s0.memory ND) (pl1 s0 ND PL0) CB CL (hdrLen (pl1 s0 ND PL0)) BUF ks kp) := by
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
  let QN := ArmQ s0 p p1 FR ND K PL CB CL HL BUF ks kp
  have hQN : ∀ x, S2N x → ∀ r (t : State σ) o, QN r t →
      QN r { t with locals := t.locals.resVarEq (x, o) } :=
    fun x hx r t o h => armQ_res hx o h
  have hWB : ∀ x, WBx x → WBx x := fun _ h => h
  have hWok := wb_ok (s0 := s0) (ND := ND) hX.kok
  have hWf : ∀ x, Wf x → CacheW s0.memory ND x ∨ KBuf s0 x := fun _ h => h.elim
  set V3 := rd s0.memory (ND + BitVec.ofNat 64 160) with hV3
  set L3 := rd s0.memory (ND + BitVec.ofNat 64 168) with hL3
  set e5 := encLenN (ld8W s0 V3) L3 with he5
  unfold fin3
  refine hoareG_dec fun t _ h v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (Q := QN) ?_ (fun _ _ h => h) fun r u _ _ hq => hQN _ s2N_j r u _ hq
  let Inv : State σ → Prop := fun u => ∃ J : BitVec 64, J.toNat ≤ 16 ∧
    u.locals.lookup (nm "j") = some (.val (.word J)) ∧
    S2 s0 p1 p.hp FR ND K PL CB CL HL BUF WBx (hlN + brSumN s0.memory ND J.toNat) 0 u
  let LQ : Option (PanSemResultExact 64) → State σ → Prop := PG
    (fun u => S2 s0 p1 p.hp FR ND K PL CB CL HL BUF WBx (hlN + brSumN s0.memory ND 16) 0 u)
    (FEx s0 p ND)
  refine hoareG_seq (R := LQ) ?_
    (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩) ?_
  · refine hoareG_pre (P := Inv) (hoareG_while (fun s ⟨J, h1, h2, h3⟩ => ⟨J, h1, h2, s2_clock h3⟩)
      ?_ ?_) fun u _ hu => ?_
    · -- the loop body
      refine hoareG_conseq (Q := PG Inv (FEx s0 p ND)) ?_ (fun _ _ h => h) ?_
      swap
      · intro r t _ _ h
        refine ⟨fun hr => h.1 hr, fun hc => ?_, fun hb => ?_, fun r' hr' _ _ => ?_⟩
        · obtain ⟨hab, -⟩ := h.2 _ hc
          rcases hab with ⟨e, v, h⟩ | ⟨e, h⟩ <;> cases h
        · obtain ⟨hab, -⟩ := h.2 _ hb
          rcases hab with ⟨e, v, h⟩ | ⟨e, h⟩ <;> cases h
        · exact And.intro (fun h' => by rw [hr'] at h'; cases h') (fun r'' hr'' => by
            rw [hr'] at hr''; cases hr''; exact h.2 _ hr')
      refine hoareG_pre (P := fun u => ∃ J : BitVec 64, J.toNat < 16 ∧
          u.locals.lookup (nm "j") = some (.val (.word J)) ∧
          S2 s0 p1 p.hp FR ND K PL CB CL HL BUF WBx (hlN + brSumN s0.memory ND J.toNat) 0 u) ?_
        fun u _ ⟨⟨J, hJ, hj, h⟩, hc⟩ => ⟨J, by
          obtain ⟨wc, hwc, hwc0⟩ := condTrue_iff.mp hc
          exact less16 hJ (cmp_val_true hwc hwc0 (ev_lw hj) (ev_cw _ 16)), hj, h⟩
      refine hoareG_exists fun J => ?_
      refine hoareG_pre (P := fun u =>
          (S2 s0 p1 p.hp FR ND K PL CB CL HL BUF WBx (hlN + brSumN s0.memory ND J.toNat) 0 u ∧
          (fun m => m.lookup (nm "j") = some (.val (.word J))) u.locals) ∧ J.toNat < 16) ?_
        fun u _ ⟨hJ, hj, h⟩ => ⟨⟨h, hj⟩, hJ⟩
      refine hoareG_pure fun hJ => ?_
      unfold finL2
      set Cv := rd s0.memory (slot ND J.toNat) with hCv
      have hchild : Cv.toNat < heapBase ∨ Nd Cv := (hX.trie.1 ND hX.nd).2.2.2.2 hK3 J.toNat hJ
      have hNdc : Cv ≠ 0 → (Cv = 0 ∨ heapBase ≤ Cv.toNat) → Nd Cv := fun hne hz => by
        rcases hz with h0 | h0
        · exact absurd h0 hne
        · rcases hchild with h1 | h1
          · omega
          · exact h1
      have hle : hlN + brSumN s0.memory ND J.toNat ≤ hlN + PL.toNat := by
        have := brSumN_mono s0.memory ND (a := J.toNat) (b := 16) (by omega)
        omega
      refine gcall_ref hC hA hT hNS hX0 hX.kok
        (Lx := fun m => m.lookup (nm "j") = some (.val (.word J))) (Cv := Cv)
        (RLs := RL s0.memory Cv) (Wx := WBx) (Wx2 := WBx) (TOT := hlN + PL.toNat) hbuf hb8 hX.le1
        hle hTOT hWok hWok s2N_w4
        (fun m v h1 => by rw [lookup_update_ne _ _ (by decide)]; exact h1)
        ?_ ?_ hWB (fun a h => Or.inr h) (fun hb => Or.inl ⟨Cv, hb, rfl, Or.inr ⟨hK3, J.toNat, hJ, rfl⟩⟩)
        ?_ (fun r u hu hr => And.intro (fun h => by cases h)
          (fun r' hr' => by cases hr'; exact ⟨hr, hu⟩)) fun u h hL hw => ?_
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
      · intro r u o h
        exact pG_res (fun t ⟨J', hJ', hj', h'⟩ => ⟨J', hJ', by
            rw [lookup_resVarEq_ne _ _ (by decide)]; exact hj', s2_res h' s2N_w4 o⟩)
          (fun t h => fEx_locals _ h) h
      -- `off = off + w4; j = j + 1`
      refine hoareG_seq (R := fun r u' => r = none ∧
          S2 s0 p1 p.hp FR ND K PL CB CL HL BUF WBx (hlN + brSumN s0.memory ND J.toNat + (RL s0.memory Cv).toNat) 0 u' ∧
          u'.locals.lookup (nm "j") = some (.val (.word J))) ?_
        (fun r t _ hr _ h => absurd h.1 hr) ?_
      · exact hoareG_pre (gstep_off (Lx := fun m => m.lookup (nm "j") = some (.val (.word J)))
          (fun m v h1 => by rw [lookup_update_ne _ _ (by decide)]; exact h1))
          (fun u' _ hu => by subst hu; exact ⟨h, by rw [ofNat_toNat_self]; exact hw, hL⟩)
      · refine hoareG_conseq (hoareG_assign fun u' _ ⟨_, h', hj'⟩ v hv _ => ?_) (fun _ _ h => h)
          (fun r t _ _ h => h)
        rw [ev_add2 (ev_lw hj') (ev_cw _ 1)] at hv
        cases hv
        have e1 : (J + BitVec.ofNat 64 1).toNat = J.toNat + 1 := toNat_add_k (by omega)
        refine And.intro (fun _ => ?_) (fun r' hr' => by cases hr')
        refine ⟨J + BitVec.ofNat 64 1, by omega, lk_set_self _ _ _, ?_⟩
        rw [e1, brSumN_succ, ← Nat.add_assoc]
        exact s2_upd h' s2N_j _
    · intro u _ ⟨J, hJ, hj, h⟩ hc
      have h16 := ge16 J.toNat hJ (by
        rw [ofNat_toNat_self]; exact cmp_val_false hc (ev_lw hj) (ev_cw _ 16))
      rw [h16] at h
      exact ⟨fun _ => h, fun r' hr' => by cases hr'⟩
    · subst hu
      exact ⟨0, by decide, lk_set_self _ _ _, s2_wx (s2_upd h s2N_j _) fun _ h => h.elim⟩
  -- `var w5 = rlp_encode_bytes(buf + off, lds (node + 160), lds (node + 168)); off += w5`
  refine hoareG_pre (P := fun u => S2 s0 p1 p.hp FR ND K PL CB CL HL BUF WBx
    (hlN + brSumN s0.memory ND 16) 0 u ∧ (fun _ => True) u.locals) ?_ fun u _ h => ⟨h.1 rfl, trivial⟩
  have hvo : ValOK s0 Nd p.hp V3 L3 := (hX.trie.2.2.2 ND hX.nd).2 hK3
  refine gcall_enc hC hA hT hesc (Lx := fun _ => True) (SV := V3) (NV := L3) (E := e5) hbuf hb8 s2N_w5
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
  refine hoareG_conseq (hoareG_pre (gstep_off (Lx := fun _ => True) (fun _ _ _ => trivial))
    fun u' _ hu => by subst hu; exact ⟨h, hw, trivial⟩) (fun _ _ h => h) ?_
  intro r u' _ _ ⟨hr, h', _⟩
  have hP : PL = brSum s0.memory ND 16 + valLen (ld8W s0 V3) L3 := by
    rw [hPL, pl1, ← hK, if_neg (by rw [hK3]; decide), if_pos hK3, hRC3]
    simp
    rfl
  refine ⟨fun _ => ⟨_, h', ?_⟩, fun r' hr' => by rw [hr] at hr'; cases hr'⟩
  rw [hP, valLen_eq, ofNat_add3, brSum_ofNat, hHL', BitVec.add_assoc]

end InitECandidate.Solver.MemSafe.Trie
