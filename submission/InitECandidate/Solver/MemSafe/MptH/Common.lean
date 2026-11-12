import InitECandidate.Solver.MemSafe.Bn2.Submul
import InitECandidate.Solver.MemSafe.Integ.DecodeAccount
import InitECandidate.Solver.MemSafe.Helpers.Mem
import InitECandidate.Solver.MemSafe.Helpers.Nibbles
import InitECandidate.Solver.MemSafe.Bn.Code

set_option autoImplicit false

/-!
# MPT byte/nibble helpers: common rules (`MptH`)

Rules for hand proofs in the checker's activation invariant `Heap a Γ p s` for a function that
allocates one temporary block `[Ar, Ar + n)` (`alloc`), fills it by byte stores and by calls to
summarized callees (`memcpy`, `key_to_nibbles`, ...) and returns it.

* `BlkH a Ar n`: the block is unallocated at entry, outside `Γ`, allocated now (`BlkF`).
* `blkF_after`: it stays so across a callee's `SumCore` (new objects only in fresh space).
* `hoareG_callBlk`: a call whose buffer arguments lie in the block (`ArgCells ⊆ block`).
* `hoareG_stbBlk`: a byte store into the block.
* `hoareG_seqB`, `bufOK_blk`: glue.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.MptH
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-- The block `[Ar, Ar + n)` lies outside `Γ` and is allocated at `q`. -/
def BlkF (Ar : BitVec 64) (n : Nat) (Γ : Gam) (q : Ptrs) : Prop :=
  ∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ InObj Γ x.toNat ∧ q.Allocated x.toNat

/-- The block invariant in the activation invariant. -/
def BlkH (a : Act σ) (Ar : BitVec 64) (n : Nat) (u : State σ) : Prop :=
  ∃ Γ q, Ext a.Γ0 Γ ∧ Heap a Γ q u ∧ BlkF Ar n Γ q ∧
    ∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat

theorem blkH_congr {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {s t : State σ} (hm : t.memory = s.memory) (hg : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hb : t.be = s.be) (h : BlkH a Ar n s) : BlkH a Ar n t := by
  obtain ⟨Γ, q, he, hh, hB, hn⟩ := h
  exact ⟨Γ, q, he, heap_congr hH hm hg hd hb hh, hB, hn⟩

theorem hha_of_blkH {a : Act σ} {Ar : BitVec 64} {n : Nat} {s : State σ} (h : BlkH a Ar n s) :
    HHa a s := by
  obtain ⟨Γ, q, he, hh, -⟩ := h
  exact ⟨Γ, q, he, hh⟩

theorem blkF_after {Ar : BitVec 64} {n : Nat} {Γ Γ' : Gam} {p q : Ptrs} (hord : p.Ordered)
    (hord' : q.Ordered) (hm : p.Mono q) (hnf : NewFresh Γ Γ' p q) (h : BlkF Ar n Γ p) :
    BlkF Ar n Γ' q := by
  intro x hx
  obtain ⟨h1, h2⟩ := h x hx
  refine ⟨?_, alloc_mono hm h2⟩
  rintro ⟨o, ho, hlo, hhi⟩
  rcases hnf o ho x hlo hhi with ⟨o0, ho0, -, -, hlo0, hhi0⟩ | hfr
  · exact h1 ⟨o0, ho0, hlo0, hhi0⟩
  · exact fresh_not_alloc hord hord' hm hfr h2

/-- A sub-range of the block is a writable buffer. -/
theorem bufOK_blk {C : Cfg} {Ar : BitVec 64} {n : Nat} {Γ : Gam} {q : Ptrs}
    (h : BlkF Ar n Γ q) {b m : Nat} (h1 : Ar.toNat ≤ b) (h2 : b + m ≤ Ar.toNat + n) :
    BufOK C Γ q b m := by
  intro x hx
  have hx' : Overlap Ar.toNat n x := by
    obtain ⟨h8, h3, h4⟩ := hx
    exact ⟨h8, by omega, by omega⟩
  exact Or.inr (h x hx')

/-- The statement post: normal end keeps the locals and the block; abnormal ends keep `HHa`. -/
def BQ (a : Act σ) (L : LocalsH → Prop) (Ar : BitVec 64) (n : Nat)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → L t.locals ∧ BlkH a Ar n t) ∧
    ∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)

theorem hoareG_seqB {a : Act σ} {P : State σ → Prop} {L : LocalsH → Prop} {Ar : BitVec 64}
    {n : Nat} {c k : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ r t, r ≠ none → (∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)) → Q r t)
    (hc : HoareG σ X P c (BQ a L Ar n))
    (hk : HoareG σ X (fun s => L s.locals ∧ BlkH a Ar n s) k Q) :
    HoareG σ X P (.seq c k) Q :=
  hoareG_seq hc (fun r t _ hr _ h => hQ r t hr h.2) (hoareG_pre hk fun _ _ h => h.1 rfl)

/-- **A call whose buffer arguments lie in the block.** -/
theorem hoareG_callBlk {a : Act σ} (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' []) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = true → a.sg.grows = true) {L : LocalsH → Prop} {Ar : BitVec 64} {n : Nat}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → BlkH a Ar n s → ∃ vs, evs s args = some vs ∧
      (∀ Γ q, BlkF Ar n Γ q → ArgsOK a.Cb Γ q sg'.params vs) ∧
      (∀ x, ArgCells sg'.params vs x → Overlap Ar.toNat n x)) :
    HoareG σ X (fun s => L s.locals ∧ BlkH a Ar n s) (.call (some (none, none)) f args)
      (BQ a L Ar n) := by
  refine hoareG_callD (summ_funSpec hf) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn⟩ vs hvs callee v st hR _
    obtain ⟨vs', hvs', hA, hF⟩ := hargs s hs hL ⟨Γ, p, he, hh, hB, hn⟩
    rw [hvs] at hvs'
    cases hvs'
    obtain ⟨Γ', q', he', hh', hmo, hnf, -⟩ := heap_call ha hh hR (by simp [Good])
      (by simp [Abortive]) (hA Γ p hB)
      (fun x hx => Or.inr (Or.inr (Or.inl (hn x (hF x hx))))) hgw hgr
    refine ⟨fun _ => ⟨hL, Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      blkF_after (heap_ord hh) (heap_ord hh') hmo hnf hB, hn⟩, fun r' h => absurd h (by simp)⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn⟩ vs hvs callee r st hR _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨vs', hvs', hA, hF⟩ := hargs s hs hL ⟨Γ, p, he, hh, hB, hn⟩
    rw [hvs] at hvs'
    cases hvs'
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (abn_good' habn) hna (hA Γ p hB)
      (fun x hx => Or.inr (Or.inr (Or.inl (hn x (hF x hx))))) hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- **A byte store into the block.** -/
theorem hoareG_stbBlk {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop} {Ar : BitVec 64}
    {n : Nat} {ea ev' : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ w, ev s ea = some (.val (.word w)) →
      Ar.toNat ≤ w.toNat ∧ w.toNat < Ar.toNat + n) :
    HoareG σ X (fun s => L s.locals ∧ BlkH a Ar n s) (.storeByte ea ev') (BQ a L Ar n) := by
  refine hoareG_storeByte fun s hs ⟨hL, Γ, p, he, hh, hB, hn⟩ w x mem hw _ hst => ?_
  have hm := Helpers.storeByte_mod hst
  obtain ⟨h1, h2⟩ := haddr s hs hL w hw
  have hov := Helpers.overlap_byte h1 h2
  refine ⟨fun _ => ⟨hL, Γ, p, he, ?_, hB, hn⟩, fun r' h => absurd h (by simp)⟩
  exact heap_store_buf ha hh hm (fun y hy => hy ▸ Or.inr (hB _ hov).1)
    (fun y hy => hy ▸ Or.inr (Or.inr (Or.inl (hn _ hov))))

/-- `var x = e; k` inside the block scope, post `HQa`. -/
theorem hoareG_decB {a : Act σ} (hH : HooksLawful a.C a.H) {L L' : LocalsH → Prop}
    {Ar : BitVec 64} {nn : Nat} {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {k : ProgHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite x v s).locals)
    (hk : HoareG σ X (fun s => L' s.locals ∧ BlkH a Ar nn s) k (HQa a)) :
    HoareG σ X (fun s => L s.locals ∧ BlkH a Ar nn s) (.dec x sh e k) (HQa a) := by
  refine hoareG_dec fun s hs ⟨hL, hB⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => hqa_locals hH _ hq)
  subst ht
  exact ⟨h s hs hL v hv, blkH_congr (s := s) hH rfl rfl rfl rfl hB⟩

/-- A local assignment inside the block scope. -/
theorem hoareG_assignB {a : Act σ} (hH : HooksLawful a.C a.H) {L L' : LocalsH → Prop}
    {Ar : BitVec 64} {nn : Nat} {x : MlS} {e : ExpHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite x v s).locals) :
    HoareG σ X (fun s => L s.locals ∧ BlkH a Ar nn s) (.assign .local x e) (BQ a L' Ar nn) :=
  hoareG_assign fun s hs ⟨hL, hB⟩ v hv _ =>
    ⟨fun _ => ⟨h s hs hL v hv, blkH_congr (s := s) hH rfl rfl rfl rfl hB⟩,
      fun r' h => absurd h (by simp)⟩

/-- `skip` inside the block scope. -/
theorem hoareG_skipB {a : Act σ} {L L' : LocalsH → Prop} {Ar : BitVec 64} {nn : Nat}
    (h : ∀ m, L m → L' m) :
    HoareG σ X (fun s => L s.locals ∧ BlkH a Ar nn s) .skip (BQ a L' Ar nn) :=
  hoareG_skip fun _ _ ⟨hL, hB⟩ => ⟨fun _ => ⟨h _ hL, hB⟩, fun r' h => absurd h (by simp)⟩

/-- Argument cells of a `key_to_nibbles` call. -/
theorem argCells_k2n {k n o : BitVec 64} {x : BitVec 64}
    (h : ArgCells Helpers.sigKeyToNibbles.params [.val (.word k), .val (.word n), .val (.word o)] x) :
    Overlap o.toNat (2 * n.toNat + 0) x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, -⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | i <;> simp [Helpers.sigKeyToNibbles] at hn
  · rcases i with _ | _ | _ | i <;> simp [Helpers.sigKeyToNibbles] at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf] at hw hz
    subst hw; subst hz
    exact ho

theorem argsOK_k2n {C : Cfg} {Γ : Gam} {q : Ptrs} {N D : BitVec 64}
    (h : BufOK C Γ q D.toNat (2 * N.toNat + 0)) (S : BitVec 64) :
    ArgsOK C Γ q Helpers.sigKeyToNibbles.params [.val (.word S), .val (.word N), .val (.word D)] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | i <;> simp [Helpers.sigKeyToNibbles] at hpt hw <;> subst hpt <;> subst hw
  · trivial
  · trivial
  · exact ⟨D, N, rfl, rfl, h⟩

theorem overlap_mono' {b m b' n : Nat} {x : BitVec 64} (h : Overlap b m x) (h1 : b' ≤ b)
    (h2 : b + m ≤ b' + n) : Overlap b' n x := by
  obtain ⟨h8, h3, h4⟩ := h
  exact ⟨h8, by omega, by omega⟩

/-- Post with a non-normal end. -/
def RN (a : Act σ) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  r ≠ none ∧ HQa a r t

theorem rn_locals {a : Act σ} (hH : HooksLawful a.C a.H) {r : Option (PanSemResultExact 64)}
    {t : State σ} (L : LocalsH) (h : RN a r t) : RN a r { t with locals := L } :=
  ⟨h.1, hqa_locals hH L h.2⟩

theorem rn_of_abn {a : Act σ} :
    ∀ r (t : State σ), r ≠ none → (∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)) →
      RN a r t := fun r t hr h => ⟨hr, hqa_of_abn r t hr h⟩

/-- `var x = alloc(e); k` with `e` evaluating to the ghost word `SZ`: the block `[x, x + SZ)` is
a caller temporary inside `k`. -/
theorem hoareG_allocB {a : Act σ} (ha : ActOK a X)
    (halloc : CSumm σ X a.Cb a.H (nm "alloc") allocSig []) {L : LocalsH → Prop} {x : MlS}
    {e : ExpHOL 64} {k : ProgHOL 64} {SZ : BitVec 64} {L' : BitVec 64 → LocalsH → Prop}
    (hev : ∀ s : State σ, InCtx s X → L s.locals → ev s e = some (.val (.word SZ)))
    (hL' : ∀ (s st : State σ) (Ar : BitVec 64), L s.locals →
      L' Ar (setVarHOLFinite x (.val (.word Ar)) { st with locals := s.locals }).locals)
    (hk : ∀ Ar : BitVec 64, (Ar.toNat + SZ.toNat < 2 ^ 64 ∨ SZ.toNat = 0) →
      HoareG σ X (fun t => L' Ar t.locals ∧ BlkH a Ar SZ.toNat t) k (RN a)) :
    HoareG σ X (PreH a L) (.decCall x .one (nm "alloc") [e] k) (RN a) := by
  have hpsa : ∀ pt ∈ allocSig.params, pt = .any := by simp [allocSig]
  refine hoareG_decCall (summ_funSpec halloc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh1⟩ vs hvs callee v st hR _ hsh
    rw [evs_cons (hev s hs hL) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, hm2, hnf2, hret⟩ := heap_call ha hh1 hR (by simp [Good])
      (by simp [Abortive]) (argsOK_any hpsa rfl) (fun x hx => absurd hx (argCells_any hpsa))
      (by simp [allocSig]) (by simp [allocSig])
    obtain ⟨Ar, rfl⟩ := val_of_shapeEq_one' hsh
    obtain ⟨y, hy, hfb⟩ := hret _ rfl 0 (.freshArg 0 1 0) Ar rfl (by rw [flattenHOL]; rfl)
    have hye : y = SZ := by
      simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hy
      exact hy.symm
    subst hye
    have hfb' : FreshBuf Γ2 q q2 Ar y.toNat := by simpa using hfb
    clear hfb
    have hord1 := heap_ord hh1
    have hord2 := heap_ord hh2
    have hm1 : a.p0.Mono q := hh1.2.2.1
    have hArn : Ar.toNat + y.toNat < 2 ^ 64 ∨ y.toNat = 0 := by
      rcases freshBuf_bound hord1 hord2 hfb' with h | h
      · exact Or.inr h
      · exact Or.inl h
    have hblkF : BlkF Ar y.toNat Γ2 q2 := fun z hz =>
      ⟨(hfb'.2 z hz).2, fresh_alloc hord1 (hfb'.2 z hz).1⟩
    have hblkN : ∀ z : BitVec 64, Overlap Ar.toNat y.toNat z → ¬ a.p0.Allocated z.toNat :=
      fun z hz => fresh_not_alloc ha.hord0 hord2 (mono_trans hm1 hm2)
        (fresh_mono hm1 (hfb'.2 z hz).1)
    refine hoareG_conseq (Q := RN a) ?_ (fun _ _ h => h) (fun r t _ _ h => rn_locals ha.hH _ h)
    refine hoareG_pre (hk Ar hArn) (fun t _ ht => ?_)
    subst ht
    exact ⟨hL' s st Ar hL,
      Γ2, q2, ext_trans he he2, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2, hblkF, hblkN⟩
  · intro s hs ⟨hL, Γ, q, he, hh1⟩ vs hvs callee r st hR _ habn
    refine ⟨by simp, fun r' hr' hna => ?_⟩
    cases hr'
    rw [evs_cons (hev s hs hL) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, -⟩ := heap_call ha hh1 hR (abn_good' habn) hna
      (argsOK_any hpsa rfl) (fun x hx => absurd hx (argCells_any hpsa))
      (by simp [allocSig]) (by simp [allocSig])
    exact ⟨Γ2, q2, ext_trans he he2, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2⟩

/-- Argument cells of `keccak256(key, klen, out)` (`[any, any, buf n]`). -/
theorem argCells_kec {n : Nat} {k l o : BitVec 64} {x : BitVec 64}
    (h : ArgCells ([.any, .any, .buf n] : List PT) [.val (.word k), .val (.word l), .val (.word o)]
      x) : Overlap o.toNat n x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, hov⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | i <;> simp at hn
    obtain rfl := hn
    simp [argW, wordOf] at hw
    subst hw
    exact hov
  · rcases i with _ | _ | _ | i <;> simp at hj

end InitECandidate.Solver.MemSafe.MptH
