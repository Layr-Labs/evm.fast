import InitECandidate.Solver.MemSafe.Dn.Kit3
import InitECandidate.Solver.MemSafe.Hooks.ValWrite

set_option autoImplicit false

/-!
# The decoder loop: definitions and helpers

* `bdSig`, `aB`, `RvB`: `_decode_witness_node_body`'s signature, activation, return predicate;
* `JG a`: the typed part of the loop invariant (`top`/`result`/`mode`/`go` and the record chain);
* `regionFree`: no `Γ` object meets the record region `[q.sp, p0.sp)`;
* `frG_call`, `frG_upd_out`, `frG_upd_head`: the chain across a call and the body's stores;
* `gp_stOut` (a store into a cell outside `Γ` and fresh since the entry), `gp_stW` (a typed
  store into a non-`prot` slot with a fitting value).
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

def bdSig : Sig := ⟨[.any, .any, .any], [.fits Types.nodeU], [], true⟩

abbrev aB (vs : List (ValueHOL 64)) (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) : Act σ :=
  actOf Types.guestC (Hooks.guestHooksR (σ := σ)) bdSig [] vs s0 Γ0 p0

def RvB (a : Act σ) : Gam → Ptrs → Mem → ValueHOL 64 → Prop :=
  fun Γ q _ v => RetOK Γ a.p0 q a.vs a.sg.ret v

/-- The typed part of the loop invariant. -/
def JG (a : Act σ) (s : State σ) : Prop :=
  ∃ T R Mo G : BitVec 64, s.locals.lookup (nm "top") = some (.val (.word T)) ∧
    s.locals.lookup (nm "result") = some (.val (.word R)) ∧
    s.locals.lookup (nm "mode") = some (.val (.word Mo)) ∧
    s.locals.lookup (nm "go") = some (.val (.word G)) ∧ (G = 0 → Mo ≠ 1 ∧ Mo ≠ 2) ∧
    ∃ (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ ∧ Heap a Γ q s ∧ ScrOld a.Γ0 Γ ∧
      FrG a Γ q s.memory q.sp a.p0.sp T ∧ (Mo ≠ 1 → Mo ≠ 2 → Fits Γ Types.nodeU R) ∧
      (∃ DB : BitVec 64, s.locals.lookup (nm "db") = some (.val (.word DB)) ∧
        Hooks.NdbR Γ s.memory DB) ∧
      (Mo = 1 → ∃ CP CN : BitVec 64, s.locals.lookup (nm "cur_p") = some (.val (.word CP)) ∧
        s.locals.lookup (nm "cur_n") = some (.val (.word CN)) ∧ Hooks.VInR Types.tVAL Γ CP CN)

/-- No object of `Γ` meets the record region. -/
theorem regionFree {a : Act σ} (haC : a.C = Types.guestC) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap a Γ q s) (hsc : ScrOld a.Γ0 Γ) (hL0 : Layout Types.guestC a.p0 a.Γ0)
    {x : Nat} (h1 : q.sp ≤ x) (h2 : x < a.p0.sp) : ¬ InObj Γ x := by
  rintro ⟨o, ho, l, u⟩
  obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
  rw [hh.2.1] at hp1
  cases hp1
  rw [haC] at hL
  obtain ⟨-, -, -, -, hlive⟩ := hL.1 o ho
  obtain ⟨o1, o2, o3, o4, o5, -⟩ := hord
  cases hr : (Types.guestC.ty o.ty).region with
  | heap =>
    rw [hr] at hlive; simp only [Region.Live] at hlive
    obtain ⟨-, b⟩ := hlive; unfold Obj.hi at u; unfold Obj.lo at l b; omega
  | fmem =>
    rw [hr] at hlive; simp only [Region.Live] at hlive
    obtain ⟨-, b⟩ := hlive; unfold Obj.hi at u; unfold Obj.lo at l b; omega
  | scratch =>
    obtain ⟨o0, ho0, hb, ht⟩ := hsc o ho hr
    obtain ⟨-, -, -, -, hlive0⟩ := hL0.1 o0 ho0
    rw [ht, hr] at hlive0
    simp only [Region.Live] at hlive0
    obtain ⟨b0, -⟩ := hlive0
    unfold Obj.lo at l b0
    rw [hb] at b0
    omega

/-- **The record chain across a call** (keeping the caller's lower bound). -/
theorem frG_call0 {a : Act σ} (haC : a.C = Types.guestC) (haCb : a.Cb = Types.guestC)
    (hL0 : Layout Types.guestC a.p0 a.Γ0) (hsp0 : a.p0.sp ≤ scratchEnd) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) (hsc : ScrOld a.Γ0 Γ)
    {T : BitVec 64} (h : FrG a Γ q s.memory q.sp a.p0.sp T) :
    FrG a Γ' q' st.memory q.sp a.p0.sp T := by
  have hord := heap_ord co.heap0
  have hord' := heap_ord co.heap
  have hse : scratchEnd < 2 ^ 64 := by decide
  have hM : ∀ x : BitVec 64, (q.sp ≤ x.toNat ∧ x.toNat < a.p0.sp) ∨
      (x.toNat < heapEnd ∧ ¬ InObj Γ x.toNat ∧ q.Allocated x.toNat) → st.memory x = s.memory x := by
    intro x hx
    rcases hx with ⟨h1, h2⟩ | ⟨-, hni, hal⟩
    · refine co.frame x (fun ⟨o, ho, k, hk, _, hx⟩ => ?_) ?_
      · rw [haCb] at *
        obtain ⟨p1, hp1, hord1, hL, -⟩ := co.heap0.1
        rw [co.heap0.2.1] at hp1
        cases hp1
        exact regionFree haC co.heap0 hsc hL0 h1 h2 (hx ▸ cell_in hord1 hL ho hk)
      · unfold Ptrs.Allocated; right; right; exact ⟨h1, by omega⟩
    · refine co.frame x (fun ⟨o, ho, k, hk, _, hx⟩ => hni ?_) hal
      obtain ⟨p1, hp1, hord1, hL, -⟩ := co.heap0.1
      rw [co.heap0.2.1] at hp1
      cases hp1
      rw [haC] at hL
      exact hx ▸ cell_in hord1 hL ho hk
  have h1 := frG_mem (a := a) (Γ := Γ) (q := q) (lo0 := q.sp) (hi := a.p0.sp) (by omega) hM _ _ T (le_refl _) rfl h
  exact frG_ext co.ext co.nf co.mono hord hord' _ _ T rfl h1

/-- **The record chain across a call.** -/
theorem frG_call {a : Act σ} (haC : a.C = Types.guestC) (haCb : a.Cb = Types.guestC)
    (hL0 : Layout Types.guestC a.p0 a.Γ0) (hsp0 : a.p0.sp ≤ scratchEnd) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) (hsc : ScrOld a.Γ0 Γ)
    {T : BitVec 64} (h : FrG a Γ q s.memory q.sp a.p0.sp T) :
    FrG a Γ' q' st.memory q'.sp a.p0.sp T :=
  frG_mono_lo co.mono.2.2 (frG_call0 haC haCb hL0 hsp0 co hsc h)

/-- `JG` survives restoring a local other than the loop's. -/
theorem jg_res {a : Act σ} (hH : HooksLawful a.C a.H) {x : MlS} (h1 : x ≠ nm "top")
    (h2 : x ≠ nm "result") (h3 : x ≠ nm "mode") (h4 : x ≠ nm "go") (h5 : x ≠ nm "db")
    (h6 : x ≠ nm "cur_p") (h7 : x ≠ nm "cur_n") (t : State σ)
    (o : Option (ValueHOL 64)) (h : JG a t) :
    JG a { t with locals := t.locals.resVarEq (x, o) } := by
  obtain ⟨T, R, Mo, G, hT, hR, hM, hG, hGM, Γ, q, he, hh, hsc, hF, hfit, ⟨DB, hDB, hND⟩, hcur⟩ := h
  refine ⟨T, R, Mo, G, ?_, ?_, ?_, ?_, hGM, Γ, q, he, heap_congr (s := t) hH rfl rfl rfl rfl hh,
    hsc, hF, hfit, ⟨DB, ?_, hND⟩, fun hm1 => ?_⟩
  · show (t.locals.resVarEq (x, o)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ h1]; exact hT
  · show (t.locals.resVarEq (x, o)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ h2]; exact hR
  · show (t.locals.resVarEq (x, o)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ h3]; exact hM
  · show (t.locals.resVarEq (x, o)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ h4]; exact hG
  · show (t.locals.resVarEq (x, o)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ h5]; exact hDB
  · obtain ⟨CP, CN, l1, l2, l3⟩ := hcur hm1
    refine ⟨CP, CN, ?_, ?_, l3⟩
    · show (t.locals.resVarEq (x, o)).lookup _ = _
      rw [lookup_resVarEq_ne _ _ h6]; exact l1
    · show (t.locals.resVarEq (x, o)).lookup _ = _
      rw [lookup_resVarEq_ne _ _ h7]; exact l2

theorem upd_ne {M : Mem} {A x V : BitVec 64} (h : x ≠ A) : Struct.upd M A V x = M x := by
  unfold Struct.upd; rw [if_neg h]

/-- A store below the chain's region: into a cell of a `Γ` object, or above the heap. -/
theorem frG_upd_out {a : Act σ} {Γ : Gam} {q : Ptrs} {M : Mem} {lo hi : Nat} {T A V : BitVec 64}
    (hhi : hi < 2 ^ 64) (hA : A.toNat < lo) (hAo : InObj Γ A.toNat ∨ heapEnd ≤ A.toNat)
    (h : FrG a Γ q M lo hi T) : FrG a Γ q (Struct.upd M A V) lo hi T :=
  frG_mem (lo0 := lo) hhi (fun x hx => by
    have hne : x ≠ A := by
      rintro rfl
      rcases hx with ⟨h1, h2⟩ | ⟨h1, h2, h3⟩
      · omega
      · rcases hAo with h | h
        · exact h2 h
        · omega
    exact upd_ne hne) _ _ T (le_refl _) rfl h

/-- A store into the head record, at a cell the chain does not read (`32`, `40`, `80`). -/
theorem frG_upd_head {a : Act σ} {Γ : Gam} {q : Ptrs} {M : Mem} {lo hi : Nat} {T V : BitVec 64}
    {k : Nat} (hhi : hi < 2 ^ 64) (hT : T ≠ 0) (hk : k = 32 ∨ k = 40 ∨ k = 80)
    (h : FrG a Γ q M lo hi T) : FrG a Γ q (Struct.upd M (T + BitVec.ofNat 64 k) V) lo hi T := by
  obtain ⟨h1, h2, h3, h3', h4, h4', h5⟩ := frG_unfold h hT
  have hk88 : k < 88 := by omega
  have ek : (T + BitVec.ofNat 64 k).toNat = T.toNat + k := Spec.Mpt.Dec.toNat_add_lt (by omega)
  have ne : ∀ x : BitVec 64, x.toNat ≠ T.toNat + k → x ≠ T + BitVec.ofNat 64 k :=
    fun x hx e => hx (by rw [e, ek])
  have mk : ∀ j : Nat, j < 88 → j ≠ k → rd (Struct.upd M (T + BitVec.ofNat 64 k) V) (T + BitVec.ofNat 64 j) =
      rd M (T + BitVec.ofNat 64 j) := fun j hj hjk =>
    rd_eq_of_mem (upd_ne (ne _ (by rw [Spec.Mpt.Dec.toNat_add_lt (k := j) (by omega)]; omega)))
  have m0 : rd (Struct.upd M (T + BitVec.ofNat 64 k) V) T = rd M T :=
    rd_eq_of_mem (upd_ne (ne T (by omega)))
  have m8 : rd (Struct.upd M (T + BitVec.ofNat 64 k) V) (T + 8) = rd M (T + 8) := mk 8 (by omega) (by omega)
  have m16 : rd (Struct.upd M (T + BitVec.ofNat 64 k) V) (T + 16) = rd M (T + 16) := mk 16 (by omega) (by omega)
  refine frG_cons h1 h2 h3 h3' (by rw [m8, m16]; exact h4) ?_ ?_
  · refine recS_mem h4' m8 (mk 24 (by omega) (by omega)) (mk 48 (by omega) (by omega))
      (mk 56 (by omega) (by omega)) (mk 64 (by omega) (by omega)) (mk 72 (by omega) (by omega))
      (fun x hx1 hx2 hx3 => upd_ne (fun e => ?_))
    have := h3'
    rw [e] at hx1
    omega
  · rw [m0]
    exact frG_mem (lo0 := T.toNat + 88) hhi (fun x hx => upd_ne (by
      rintro rfl
      rcases hx with ⟨hx1, hx2⟩ | ⟨hx1, hx2, hx3⟩
      · omega
      · omega)) _ _ _ (le_refl _) rfl h5

/-- `ld (top + k)`. -/
theorem ev_ldTopk {s : State σ} {T : BitVec 64} (ht : s.locals.lookup (nm "top") = some (.val (.word T)))
    (k : Nat) : ∀ v, ev s (.load .one (.op .add [lv (nm "top"), cw k])) = some v →
      v = .val (.word (rd s.memory (T + BitVec.ofNat 64 k))) := by
  intro v hv
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add_cw ht k] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  rw [Struct.mem_word s.memory _]

/-- A `DB`-preserving `dec` whose body sees the evaluated value in `E1`. -/
theorem gp_decJV {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {Inv : State σ → Prop}
    (hH : HooksLawful a.C a.H) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {L1 : ValueHOL 64 → LocalsH → Prop}
    {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    (h : ∀ s : State σ, InCtx s guestCtx → L s.locals → ∀ v, ev s e = some v →
      L1 v (setVarHOLFinite x v s).locals)
    (hE : ∀ (s : State σ) Γ q, L s.locals → E Γ q s.memory → ∀ v, ev s e = some v →
      E1 v Γ q s.memory)
    (hk : ∀ v, HoareG σ guestCtx (GI a (L1 v) (E1 v)) body (GPJ a Inv Rv))
    (hres : ∀ (t : State σ) (o : Option (ValueHOL 64)), Inv t →
      Inv { t with locals := t.locals.resVarEq (x, o) }) :
    HoareG σ guestCtx (GI a L E) (.dec x sh e body) (GPJ a Inv Rv) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hsc, hE'⟩ v hv _ => ?_
  refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc, hE s Γ q hL hE' v hv⟩
  · exact ⟨fun hr => hres t _ (hq.1 hr), fun r' hr' => gx_locals hH _ (hq.2 r' hr')⟩

/-! ## The node DB survives the loop's stores -/

theorem ndbR_upd {Γ : Gam} {M : Mem} {T A V : BitVec 64} (h : Hooks.NdbR Γ M T)
    (hA : ∀ a, Hooks.RCell Γ a → a ≠ A) : Hooks.NdbR Γ (Struct.upd M A V) T :=
  (Hooks.ndb_frame h (fun a ha => upd_ne (hA a (Hooks.ndbFp_rcell h ha)))).1

theorem rcell_ne_out {Γ : Gam} {A : BitVec 64} (h : ¬ InObj Γ A.toNat) :
    ∀ a, Hooks.RCell Γ a → a ≠ A := fun a ha e => h (e ▸ Wit.rcell_inObj ha)

theorem rcell_ne_wcell {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout Types.guestC p Γ)
    {A : BitVec 64} (h : WCell Types.guestC Γ A) : ∀ a, Hooks.RCell Γ a → a ≠ A :=
  fun a ha e => Wit.rcell_not_wcell hord hL ha (e ▸ h)

theorem rcell_ne_node {Γ : Gam} (hG : Hooks.GamOK Γ) {A : BitVec 64} {o : Obj} (ho : o ∈ Γ)
    (hn : Hooks.IsNodeTy o.ty) (h1 : o.lo ≤ A.toNat) (h2 : A.toNat < o.hi) :
    ∀ a, Hooks.RCell Γ a → a ≠ A := by
  intro a ha e
  obtain ⟨x, hx, hx1, hx2, hnn⟩ := Hooks.rcell_notNode ha
  subst e
  have := Hooks.gam_eq hG hx ho hx1 hx2 h1 h2
  subst this
  exact Hooks.isNode_notNotNode hn hnn

/-- **A store into a cell outside `Γ`, fresh since the entry.** -/
theorem gp_stOut {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {ea e : ExpHOL 64} {A : BitVec 64}
    (hea : ∀ s : State σ, L s.locals → ev s ea = some (.val (.word A)))
    (hB : ∀ Γ q M, E Γ q M → ¬ InObj Γ A.toNat ∧ ¬ a.p0.Allocated A.toNat)
    (hv : ∀ (s : State σ) v, L s.locals → ev s e = some v → ∃ V, v = .val (.word V))
    (hE : ∀ (s : State σ) Γ q (V : BitVec 64), L s.locals → E Γ q s.memory →
      ev s e = some (.val (.word V)) → E' Γ q (Struct.upd s.memory A V)) :
    HoareG σ X (GI a L E) (.store ea e) (GP a L E' Rv) := by
  refine gp_store fun s Γ q hs hL hh hEs w v mem hw hv' hmem => ?_
  rw [hea s hL] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  obtain ⟨V, rfl⟩ := hv s v hL hv'
  have hm := Struct.store_word hmem
  rw [flat_word] at hmem
  obtain ⟨hmod, -⟩ := Helpers.store1_mod hmem
  obtain ⟨hni, hna⟩ := hB Γ q s.memory hEs
  refine ⟨heap_store_out ha hh hmod hni hna, ?_⟩
  rw [hm]
  exact hE s Γ q V hL hEs hv'

/-- **A typed store into a non-`prot` slot** with a fitting value. -/
theorem gp_stW {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {ea e : ExpHOL 64} {A : BitVec 64}
    (hea : ∀ s : State σ, L s.locals → ev s ea = some (.val (.word A)))
    (hv : ∀ (s : State σ) v, L s.locals → ev s e = some v → ∃ V, v = .val (.word V))
    (hfit : ∀ (s : State σ) Γ q (V : BitVec 64), L s.locals → Heap a Γ q s → E Γ q s.memory →
      ev s e = some (.val (.word V)) → ∃ o ∈ Γ, ∃ j, o.HasSlot j ∧
        (a.Cb.ty o.ty).slot j ≠ .prot ∧ A = o.cell j ∧ Fits Γ ((a.Cb.ty o.ty).slot j) V)
    (hE : ∀ (s : State σ) Γ q (V : BitVec 64), L s.locals → E Γ q s.memory →
      ev s e = some (.val (.word V)) → E' Γ q (Struct.upd s.memory A V)) :
    HoareG σ X (GI a L E) (.store ea e) (GP a L E' Rv) := by
  refine gp_store fun s Γ q hs hL hh hEs w v mem hw hv' hmem => ?_
  rw [hea s hL] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  obtain ⟨V, rfl⟩ := hv s v hL hv'
  have hm := Struct.store_word hmem
  rw [flat_word] at hmem
  obtain ⟨hmod, -⟩ := Helpers.store1_mod hmem
  obtain ⟨o, ho, j, hj, hnp, hA, hF⟩ := hfit s Γ q V hL hh hEs hv'
  have hW : WCell a.C Γ A := ⟨o, ho, j, hj, by rw [ha.hupg]; exact hnp, hA⟩
  refine ⟨heap_write ha hh hmod (fun x hx => Or.inr (hx ▸ hW)) (fun o' ho' k hk hx => ?_)
    (fun x hx => hx ▸ foot_of_wcell hh ha.hord0 ha.hsz0 hW), ?_⟩
  · obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
    obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho' ho hk hj (hx.trans hA)
    rw [hx, hm, Struct.rd_upd_self, ha.hupg]
    exact hF
  · rw [hm]
    exact hE s Γ q V hL hEs hv'

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.frG_call
#print axioms InitECandidate.Solver.MemSafe.Dn.frG_upd_head
#print axioms InitECandidate.Solver.MemSafe.Dn.gp_stW
