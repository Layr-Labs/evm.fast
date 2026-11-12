import InitECandidate.Solver.MemSafe.Aw.Htr2
import InitECandidate.Solver.MemSafe.Aw.Hh

set_option autoImplicit false

/-!
# Frame functions: `mark; ch = alloc(k*32); steps into ch; merkleize(ch,k,k,out); release`

Covers `htr_withdrawal`, `htr_deposit`, `htr_wdreq`, `htr_cons`, `htr_bdep`, `htr_bexit`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def chN : MlS := nm "ch"

/-- `x + c`, or `x` when `c = 0`. -/
def offX (x : MlS) (c : Nat) : ExpHOL 64 := if c = 0 then lv x else .op .add [lv x, cw c]

theorem ev_offX {s : State σ} {x : MlS} {w : BitVec 64} (c : Nat)
    (h : s.locals.lookup x = some (.val (.word w))) :
    ev s (offX x c) = some (.val (.word (w + BitVec.ofNat 64 c))) := by
  unfold offX
  split
  · rename_i hc
    subst hc
    rw [ev_lw h]
    simp
  · exact ev_add2 (ev_lw h) (ev_cw _ c)

/-- Kinds: 0 `htr_bytes_vector(e+oe, n, ch+oc)`, 1 `htr_u64_at(e+oe, ch+oc)`,
2 `memcpy(ch+oc, e+oe, 32)`. -/
structure Stp where
  kind : Nat
  oe : Nat
  oc : Nat
  n : Nat

def stepProg (en : MlS) (st : Stp) : ProgHOL 64 :=
  if st.kind = 0 then callD (nm "htr_bytes_vector") [offX en st.oe, cw st.n, offX chN st.oc]
  else if st.kind = 1 then callD (nm "htr_u64_at") [offX en st.oe, offX chN st.oc]
  else callD (nm "memcpy") [offX chN st.oc, offX en st.oe, cw 32]

def stepsProg (en : MlS) : List Stp → ProgHOL 64 → ProgHOL 64
  | [], r => r
  | st :: ss, r => .seq (stepProg en st) (stepsProg en ss r)

def frameBody (en : MlS) (k : Nat) (ss : List Stp) : ProgHOL 64 :=
  .decCall markN .one (nm "heap_mark") []
    (.decCall chN .one (nm "alloc") [.panop .mul [cw k, cw 32]]
      (stepsProg en ss
        (.seq (callD (nm "merkleize") [lv chN, cw k, cw k, lv outN])
          (.seq (callD (nm "heap_release") [lv markN]) (.return (cw 0))))))

def StpOK (st : Stp) : Prop := st.oe < 2 ^ 20 ∧ st.oc < 2 ^ 20 ∧ st.kind ≤ 2

theorem hoareG_callOK {a : AwE σ} (hK : AwOK a) {f : MlS} {args : List (ExpHOL 64)}
    {Pre : List (ValueHOL 64) → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop}
    (hf : ASp a X f (fun vs _ => Pre vs) Ret) {L : Locals → Prop} {Ret' : ValueHOL 64 → Prop}
    (hargs : ∀ s : State σ, L s.locals → ∀ vs, evs s args = some vs → Pre vs) :
    HoareG σ X (APre a L) (callD f args) (AQ a L Ret') :=
  hoareG_callAs hK hf (fun s _ h vs hvs callee => hargs s h.2 vs hvs)
    (fun _ _ _ _ hL _ _ => hL)

/-- The invariant of the frame after the allocation. -/
def FL (a : AwE σ) (en : MlS) (E O : BitVec 64) (m : Locals) : Prop :=
  m.lookup en = some (.val (.word E)) ∧ m.lookup outN = some (.val (.word O)) ∧
    Bd m chN a.h0 heapEnd ∧ MkB a.p0.hp markN m

theorem hoareG_steps {a : AwE σ} (en : MlS) (hK : AwOK a) (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) {E O : BitVec 64} {L : Locals → Prop} (hfl : ∀ m, L m → FL a en E O m)
    (hbv : ASp a X (nm "htr_bytes_vector") (fun vs _ => OutAt 2 a.h0 vs) (fun _ _ _ => True))
    (hu : ASp a X (nm "htr_u64_at") (fun vs _ => OutAt 1 a.h0 vs) (fun _ _ _ => True))
    (ss : List Stp) (hss : ∀ st ∈ ss, StpOK st) {r : ProgHOL 64} {Ret : ValueHOL 64 → Prop}
    {Lend : Locals → Prop}
    (hr : HoareG σ X (APre a L) r (AQ a Lend Ret)) :
    HoareG σ X (APre a L) (stepsProg en ss r) (AQ a Lend Ret) := by
  induction ss with
  | nil => exact hr
  | cons st ss ih =>
    have hs := hss st (by simp)
    have ih' := ih (fun st' h => hss st' (by simp [h]))
    unfold stepsProg
    refine hoareG_seqA (L2 := L) ?_ ih'
    obtain ⟨h1, h2, h3⟩ := hs
    have hHE : heapEnd = 2952790016 := rfl
    have hch : ∀ m : Locals, FL a en E O m → ∃ Ch : BitVec 64, m.lookup chN = some (.val (.word Ch)) ∧
        a.h0 ≤ Ch.toNat ∧ Ch.toNat ≤ heapEnd := fun m h => h.2.2.1
    unfold stepProg
    split
    · rename_i hk
      refine hoareG_callOK hK hbv ?_
      intro s hL0 vs hvs
      have hL := hfl _ hL0
      obtain ⟨Ch, hCh, c1, c2⟩ := hch _ hL
      rw [evs_cons (ev_offX _ hL.1) (evs_cons (ev_cw _ _) (evs_cons (ev_offX _ hCh) evs_nil))] at hvs
      cases hvs
      have hw : (Ch + BitVec.ofNat 64 st.oc).toNat = Ch.toNat + st.oc := toNat_addc (by omega)
      exact ⟨_, rfl, by rw [hw]; omega, by rw [hw]; omega⟩
    · split
      · refine hoareG_callOK hK hu ?_
        intro s hL0 vs hvs
        have hL := hfl _ hL0
        obtain ⟨Ch, hCh, c1, c2⟩ := hch _ hL
        rw [evs_cons (ev_offX _ hL.1) (evs_cons (ev_offX _ hCh) evs_nil)] at hvs
        cases hvs
        have hw : (Ch + BitVec.ofNat 64 st.oc).toNat = Ch.toNat + st.oc := toNat_addc (by omega)
        exact ⟨_, rfl, by rw [hw]; omega, by rw [hw]; omega⟩
      · refine hoareG_callOK hK (asp_memcpy hK hC hA hT) ?_
        intro s hL0 vs hvs
        have hL := hfl _ hL0
        obtain ⟨Ch, hCh, c1, c2⟩ := hch _ hL
        rw [evs_cons (ev_offX _ hCh) (evs_cons (ev_offX _ hL.1) (evs_cons (ev_cw _ _) evs_nil))] at hvs
        cases hvs
        have hw : (Ch + BitVec.ofNat 64 st.oc).toNat = Ch.toNat + st.oc := toNat_addc (by omega)
        exact ⟨_, _, rfl, rfl, by rw [hw]; omega, by rw [hw]; omega⟩

theorem awSpec_frame {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C) (f en : MlS) (k : Nat) (ss : List Stp) (hss : ∀ st ∈ ss, StpOK st)
    (hk : k < 2 ^ 20) (hen : en ≠ markN ∧ en ≠ chN ∧ en ≠ outN)
    (hcode : guestCode f = some ([(en, .one), (outN, .one)], frameBody en k ss, .one))
    (hBV : AWSpec σ X C H (nm "htr_bytes_vector") [] (fun vs _ h0 => OutAt 2 h0 vs)
      (fun vs _ v _ => OutRes 2 vs v))
    (hU : AWSpec σ X C H (nm "htr_u64_at") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hMk : AWSpec σ X C H (nm "merkleize") [] (fun vs _ h0 => MerkPre h0 vs)
      (fun vs _ v _ => MerkPost vs v)) :
    AWSpec σ X C H f [] (fun vs _ h0 => OutAt 1 h0 vs) (fun vs _ v _ => OutRes 1 vs v) := by
  refine awSpec_of_hoareG (PV := OutRes 1) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, rfl, hA', hB', hla, hlb⟩ := lookupCode_two hcode hen.2.2 hl
  obtain ⟨E, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨O1, hO1, ho1, ho2⟩ := hPre
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hbv := asp_of_aw hK hBV (fun g hg => absurd hg (by simp)) (fun vs s v t h => trivial)
  have hu := asp_of_aw hK hU (fun g hg => absurd hg (by simp)) (fun vs s v t h => trivial)
  have hmk := asp_of_aw hK hMk (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  let LL : Locals → Prop := fun m => m.lookup en = some (.val (.word E)) ∧
    m.lookup outN = some (.val (.word O))
  refine hoareG_conseq (P := APre a LL)
    (Q := AQ a (fun _ => True) (OutRes 1 [.val (.word E), .val (.word O)])) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact ⟨hla, hlb⟩⟩)
    (fun _ _ _ _ h => h)
  unfold frameBody
  refine hoareG_decCallAs' hK (asp_mark hK hC)
    (Lk := fun m => LL m ∧ MkB p.hp markN m)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨⟨by rw [lookup_update_ne _ _ hen.1.symm]; exact hL.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.2⟩,
      w, lookup_update_self _ _ _, h1, h2, h3⟩
  intro s1
  refine hoareG_decCallAs' hK (asp_alloc hK hC)
    (Lk := FL a en E O) (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_mul2 (ev_cw _ k) (ev_cw _ 32)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact ⟨by rw [lookup_update_ne _ _ hen.2.1.symm]; exact hL.1.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2,
      bd_new _ _ _ hq1 (by omega), mkb_upd (by decide) hL.2⟩
  intro s2
  refine hoareG_steps en hK hC hA hT (L := FL a en E O) (fun _ h => h) hbv hu ss hss ?_
  refine hoareG_seqA (L2 := fun m => FL a en E O m ∧ O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK hmk ?_ ?_) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
    rw [ev_lw hP3.2.2.1] at e4
    cases e4
    exact ⟨O, rfl, ho1, ho2⟩
  · intro s3 vs v st hL hvs hRet
    obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
    rw [ev_lw hL.2.1] at e4
    cases e4
    exact ⟨hL, hRet O rfl⟩
  refine hoareG_seqA (L2 := fun m => O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ hL _ _ => hL.2)) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨w, hw, h1, h2, h3⟩ := hP3.2.1.2.2.2
    rw [evs_cons (ev_lw hw) evs_nil] at hvs
    cases hvs
    exact ⟨w, rfl, h1, h2, h3⟩
  · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
      cases hO'
      exact hL)


def withdrawalSteps : List Stp := [⟨1, 0, 0, 0⟩, ⟨1, 8, 32, 0⟩, ⟨0, 16, 64, 20⟩, ⟨1, 36, 96, 0⟩]

theorem code_htr_withdrawal : guestCode (nm "htr_withdrawal") =
    some ([(nm "w", .one), (outN, .one)], frameBody (nm "w") 4 withdrawalSteps, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_withdrawal =
      (nm "htr_withdrawal", [(nm "w", .one), (outN, .one)], frameBody (nm "w") 4 withdrawalSteps, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 208) (by decide)) ⟨_, rfl⟩ h

theorem awSpec_htr_withdrawal {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hBV : AWSpec σ X C H (nm "htr_bytes_vector") [] (fun vs _ h0 => OutAt 2 h0 vs)
      (fun vs _ v _ => OutRes 2 vs v))
    (hU : AWSpec σ X C H (nm "htr_u64_at") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hMk : AWSpec σ X C H (nm "merkleize") [] (fun vs _ h0 => MerkPre h0 vs)
      (fun vs _ v _ => MerkPost vs v)) :
    AWSpec σ X C H (nm "htr_withdrawal") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v) :=
  awSpec_frame hC hA hT hH hTS hAG _ _ 4 withdrawalSteps
    (by simp [withdrawalSteps, StpOK]) (by decide) (by decide) code_htr_withdrawal hBV hU hMk

def depositSteps : List Stp := [⟨0, 0, 0, 48⟩, ⟨2, 48, 32, 0⟩, ⟨1, 80, 64, 0⟩, ⟨0, 88, 96, 96⟩, ⟨1, 184, 128, 0⟩]

theorem code_htr_deposit : guestCode (nm "htr_deposit") =
    some ([(nm "e", .one), (outN, .one)], frameBody (nm "e") 5 depositSteps, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_deposit =
      (nm "htr_deposit", [(nm "e", .one), (outN, .one)], frameBody (nm "e") 5 depositSteps, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 211) (by decide)) ⟨_, rfl⟩ h

theorem awSpec_htr_deposit {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hBV : AWSpec σ X C H (nm "htr_bytes_vector") [] (fun vs _ h0 => OutAt 2 h0 vs)
      (fun vs _ v _ => OutRes 2 vs v))
    (hU : AWSpec σ X C H (nm "htr_u64_at") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hMk : AWSpec σ X C H (nm "merkleize") [] (fun vs _ h0 => MerkPre h0 vs)
      (fun vs _ v _ => MerkPost vs v)) :
    AWSpec σ X C H (nm "htr_deposit") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v) :=
  awSpec_frame hC hA hT hH hTS hAG _ _ 5 depositSteps
    (by simp [depositSteps, StpOK]) (by decide) (by decide) code_htr_deposit hBV hU hMk

def wdreqSteps : List Stp := [⟨0, 0, 0, 20⟩, ⟨0, 20, 32, 48⟩, ⟨1, 68, 64, 0⟩]

theorem code_htr_wdreq : guestCode (nm "htr_wdreq") =
    some ([(nm "e", .one), (outN, .one)], frameBody (nm "e") 3 wdreqSteps, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_wdreq =
      (nm "htr_wdreq", [(nm "e", .one), (outN, .one)], frameBody (nm "e") 3 wdreqSteps, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 212) (by decide)) ⟨_, rfl⟩ h

theorem awSpec_htr_wdreq {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hBV : AWSpec σ X C H (nm "htr_bytes_vector") [] (fun vs _ h0 => OutAt 2 h0 vs)
      (fun vs _ v _ => OutRes 2 vs v))
    (hU : AWSpec σ X C H (nm "htr_u64_at") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hMk : AWSpec σ X C H (nm "merkleize") [] (fun vs _ h0 => MerkPre h0 vs)
      (fun vs _ v _ => MerkPost vs v)) :
    AWSpec σ X C H (nm "htr_wdreq") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v) :=
  awSpec_frame hC hA hT hH hTS hAG _ _ 3 wdreqSteps
    (by simp [wdreqSteps, StpOK]) (by decide) (by decide) code_htr_wdreq hBV hU hMk

def consSteps : List Stp := [⟨0, 0, 0, 20⟩, ⟨0, 20, 32, 48⟩, ⟨0, 68, 64, 48⟩]

theorem code_htr_cons : guestCode (nm "htr_cons") =
    some ([(nm "e", .one), (outN, .one)], frameBody (nm "e") 3 consSteps, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_cons =
      (nm "htr_cons", [(nm "e", .one), (outN, .one)], frameBody (nm "e") 3 consSteps, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 213) (by decide)) ⟨_, rfl⟩ h

theorem awSpec_htr_cons {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hBV : AWSpec σ X C H (nm "htr_bytes_vector") [] (fun vs _ h0 => OutAt 2 h0 vs)
      (fun vs _ v _ => OutRes 2 vs v))
    (hU : AWSpec σ X C H (nm "htr_u64_at") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hMk : AWSpec σ X C H (nm "merkleize") [] (fun vs _ h0 => MerkPre h0 vs)
      (fun vs _ v _ => MerkPost vs v)) :
    AWSpec σ X C H (nm "htr_cons") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v) :=
  awSpec_frame hC hA hT hH hTS hAG _ _ 3 consSteps
    (by simp [consSteps, StpOK]) (by decide) (by decide) code_htr_cons hBV hU hMk

def bdepSteps : List Stp := [⟨0, 0, 0, 48⟩, ⟨2, 48, 32, 0⟩, ⟨1, 80, 64, 0⟩, ⟨0, 88, 96, 96⟩]

theorem code_htr_bdep : guestCode (nm "htr_bdep") =
    some ([(nm "e", .one), (outN, .one)], frameBody (nm "e") 4 bdepSteps, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_bdep =
      (nm "htr_bdep", [(nm "e", .one), (outN, .one)], frameBody (nm "e") 4 bdepSteps, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 214) (by decide)) ⟨_, rfl⟩ h

theorem awSpec_htr_bdep {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hBV : AWSpec σ X C H (nm "htr_bytes_vector") [] (fun vs _ h0 => OutAt 2 h0 vs)
      (fun vs _ v _ => OutRes 2 vs v))
    (hU : AWSpec σ X C H (nm "htr_u64_at") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hMk : AWSpec σ X C H (nm "merkleize") [] (fun vs _ h0 => MerkPre h0 vs)
      (fun vs _ v _ => MerkPost vs v)) :
    AWSpec σ X C H (nm "htr_bdep") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v) :=
  awSpec_frame hC hA hT hH hTS hAG _ _ 4 bdepSteps
    (by simp [bdepSteps, StpOK]) (by decide) (by decide) code_htr_bdep hBV hU hMk

def bexitSteps : List Stp := [⟨0, 0, 0, 20⟩, ⟨0, 20, 32, 48⟩]

theorem code_htr_bexit : guestCode (nm "htr_bexit") =
    some ([(nm "e", .one), (outN, .one)], frameBody (nm "e") 2 bexitSteps, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_bexit =
      (nm "htr_bexit", [(nm "e", .one), (outN, .one)], frameBody (nm "e") 2 bexitSteps, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 215) (by decide)) ⟨_, rfl⟩ h

theorem awSpec_htr_bexit {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hBV : AWSpec σ X C H (nm "htr_bytes_vector") [] (fun vs _ h0 => OutAt 2 h0 vs)
      (fun vs _ v _ => OutRes 2 vs v))
    (hU : AWSpec σ X C H (nm "htr_u64_at") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hMk : AWSpec σ X C H (nm "merkleize") [] (fun vs _ h0 => MerkPre h0 vs)
      (fun vs _ v _ => MerkPost vs v)) :
    AWSpec σ X C H (nm "htr_bexit") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v) :=
  awSpec_frame hC hA hT hH hTS hAG _ _ 2 bexitSteps
    (by simp [bexitSteps, StpOK]) (by decide) (by decide) code_htr_bexit hBV hU hMk

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_htr_withdrawal
#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_htr_deposit
#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_htr_wdreq
#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_htr_cons
#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_htr_bdep
#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_htr_bexit
