import InitECandidate.Solver.MemSafe.Ini.SiGlob

/-!
# `state_init`: the last statements (`sk_buf`, `journal`, `journal_n`, `ts`, `return 0`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Trie
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

theorem hoareG_ex {α : Type} {P : α → State σ → Prop} {p : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : ∀ x, HoareG σ X (P x) p Q) :
    HoareG σ X (fun t => ∃ x, P x t) p Q := fun s hs ⟨x, hx⟩ hg => h x s hs hx hg

section know
variable {a : Act σ} {kn : Know} {kvf : List (MlS × BitVec 64 × FK)} {Γ : Gam} {q : Ptrs} {t : State σ}

theorem sic_setW (hnone : kn.W = none) {W : BitVec 64} (hS : SIc a kn kvf Γ q t)
    (hlk : t.globals.lookup (nm "ws") = some (.val (.word W))) (hbl : BlkF a q Γ W 40) :
    SIc a { kn with W := some W } kvf Γ q t := by
  obtain ⟨hL, hWs, hBs, hwv, hbv, hSs, hJs⟩ := hS
  refine ⟨hL, fun W' h => ?_, fun B h => ?_, fun k v h => ?_, hbv, hSs, hJs⟩
  · have : W' = W := (Option.some.inj h).symm
    subst this; exact ⟨hlk, hbl⟩
  · obtain ⟨-, -, W', hW', -⟩ := hBs B h
    rw [hnone] at hW'; cases hW'
  · obtain ⟨W', hW', -⟩ := hwv k v h
    rw [hnone] at hW'; cases hW'

theorem sic_setB (hnone : kn.B = none) {B : BitVec 64} (hS : SIc a kn kvf Γ q t)
    (hlk : t.globals.lookup (nm "bs") = some (.val (.word B))) (hbl : BlkF a q Γ B 80)
    (hdis : ∀ W0, kn.W = some W0 → (W0.toNat + 40 ≤ B.toNat ∨ B.toNat + 80 ≤ W0.toNat))
    (hW : ∃ W0, kn.W = some W0) :
    SIc a { kn with B := some B } kvf Γ q t := by
  obtain ⟨hL, hWs, hBs, hwv, hbv, hSs, hJs⟩ := hS
  refine ⟨hL, hWs, fun B' h => ?_, hwv, fun k v h => ?_, hSs, hJs⟩
  · have : B' = B := (Option.some.inj h).symm
    subst this
    obtain ⟨W0, hW0⟩ := hW
    exact ⟨hlk, hbl, W0, hW0, hdis W0 hW0⟩
  · obtain ⟨B', hB', -⟩ := hbv k v h
    rw [hnone] at hB'; cases hB'

theorem sic_setS (hnone : kn.S = none) {S : BitVec 64} (hS : SIc a kn kvf Γ q t)
    (hlk : t.globals.lookup (nm "sk_buf") = some (.val (.word S))) (hbl : BlkF a q Γ S 64) :
    SIc a { kn with S := some S } kvf Γ q t := by
  obtain ⟨hL, hWs, hBs, hwv, hbv, hSs, hJs⟩ := hS
  refine ⟨hL, hWs, hBs, hwv, hbv, fun S' h => ?_, hJs⟩
  have : S' = S := (Option.some.inj h).symm
  subst this; exact ⟨hlk, hbl⟩

theorem sic_setJ (hnone : kn.J = none) {J : BitVec 64} (hS : SIc a kn kvf Γ q t)
    (hlk : t.globals.lookup (nm "journal") = some (.val (.word J))) (hbl : BlkF a q Γ J 16777216) :
    SIc a { kn with J := some J } kvf Γ q t := by
  obtain ⟨hL, hWs, hBs, hwv, hbv, hSs, hJs⟩ := hS
  refine ⟨hL, hWs, hBs, hwv, hbv, hSs, fun J' h => ?_⟩
  have : J' = J := (Option.some.inj h).symm
  subst this; exact ⟨hlk, hbl⟩

end know

/-- An assignment `g = e` to an ordinary global keeps the invariant, given the extra predicate `P`. -/
theorem step_assign_glob {a : Act σ} (haC : a.C = Types.guestC) (haH : a.H = guestHooksR (σ := σ))
    {g : MlS} (hg : g ∉ hid) (hgp : g ∉ gHeap :: gFrame :: gScratch :: []) (hgws : g ≠ nm "ws")
    (hgbs : g ≠ nm "bs") (hgsk : g ≠ nm "sk_buf") (hgj : g ≠ nm "journal") {k : FK}
    (hk : Types.guestC.GT.lookup g = some k) {v : BitVec 64} (hfit : ∀ Γ' : Gam, Fits Γ' k v)
    (hpg : g ∈ a.sg.gw ∨ g ∉ Types.guestC.PG) {kn : Know} {kvf : List (MlS × BitVec 64 × FK)}
    {P : State σ → Prop} (hP : ∀ t, P t → SI a kn kvf t) {e : ExpHOL 64}
    (hev : ∀ t, P t → ev t e = some (.val (.word v)))
    {P' : State σ → Prop} (hP' : ∀ t, P t → P' (setKvarHOLFinite .global g (.val (.word v)) t))
    {F : State σ → ValueHOL 64 → Prop} :
    HoareG σ guestCtx P (.assign .global g e)
      (NQr (fun t' => SI a kn kvf t' ∧ P' t') F) := by
  refine nqr_assign ?_
  intro s hs hPs v' hv hval
  rw [hev s hPs] at hv
  cases hv
  obtain ⟨Γ, q, hext, hh, hS⟩ := hP s hPs
  refine ⟨⟨Γ, q, hext, ?_, ?_⟩, hP' s hPs⟩
  · exact heap_setG haC haH hh hg hgp hk hfit hpg
  · exact siC_setG hS (Or.inr hgws) (Or.inr hgbs) (Or.inr hgsk) (Or.inr hgj)

/-- The recorded blocks are pairwise disjoint. -/
def Dj (kn : Know) : Prop :=
  (∀ W B : BitVec 64, kn.W = some W → kn.B = some B → W.toNat + 40 ≤ B.toNat ∨ B.toNat + 80 ≤ W.toNat) ∧
  (∀ W S : BitVec 64, kn.W = some W → kn.S = some S → W.toNat + 40 ≤ S.toNat ∨ S.toNat + 64 ≤ W.toNat) ∧
  (∀ W J : BitVec 64, kn.W = some W → kn.J = some J →
    W.toNat + 40 ≤ J.toNat ∨ J.toNat + 16777216 ≤ W.toNat) ∧
  (∀ B S : BitVec 64, kn.B = some B → kn.S = some S → B.toNat + 80 ≤ S.toNat ∨ S.toNat + 64 ≤ B.toNat) ∧
  (∀ B J : BitVec 64, kn.B = some B → kn.J = some J →
    B.toNat + 80 ≤ J.toNat ∨ J.toNat + 16777216 ≤ B.toNat) ∧
  (∀ S J : BitVec 64, kn.S = some S → kn.J = some J →
    S.toNat + 64 ≤ J.toNat ∨ J.toNat + 16777216 ≤ S.toNat)

/-- The known cells are all set, and the node DBs are the entry's. -/
def KnFull (kn : Know) (db cd : BitVec 64) : Prop :=
  (∃ W, kn.W = some W) ∧ (∃ B, kn.B = some B) ∧ kn.wv 0 = some db ∧ kn.wv 2 = some cd ∧
    (∀ k, k < 5 → ∃ v, kn.wv k = some v) ∧ (∀ k, k < 10 → ∃ v, kn.bv k = some v)

/-- The post of the tail. -/
def FinG (a : Act σ) (db cd : BitVec 64) (t : State σ) (v : ValueHOL 64) : Prop :=
  v = .val (.word 0) ∧ ∃ (kn : Know) (S Jb : BitVec 64) (Γ : Gam) (q : Ptrs), Dj { kn with S := some S, J := some Jb } ∧ KnFull kn db cd ∧
    Ext a.Γ0 Γ ∧ Heap a Γ q (gz t) ∧
    SIc a { kn with S := some S, J := some Jb } [] Γ q t ∧
    t.globals.lookup (nm "journal_n") = some (.val (.word 0)) ∧
    t.globals.lookup (nm "ts") = some (.val (.word 0)) ∧
    t.globals.lookup (nm "journal_cap") = some (.val (.word (BitVec.ofNat 64 524288)))

theorem congrF_finG {a : Act σ} (hH : HooksLawful a.C a.H) (db cd : BitVec 64) : CongrF (FinG a db cd) := by
  rintro t t' v hm hg hd hb ⟨hv, kn, S, Jb, Γ, q, hD, hk, hext, hh, hS, h1, h2, h3⟩
  refine ⟨hv, kn, S, Jb, Γ, q, hD, hk, hext, heap_congr (s := gz t) hH (by simpa [gz] using hm) (by simp [gz, hg]) hd hb hh,
    siC_locals hS (fun x hx => by cases hx) hg hm, by rw [hg]; exact h1, by rw [hg]; exact h2,
    by rw [hg]; exact h3⟩

/-- `journal_n = 0; ts = 0; return 0`. -/
theorem tail_end {a : Act σ} (haC : a.C = Types.guestC) (haH : a.H = guestHooksR (σ := σ))
    (hH : HooksLawful a.C a.H) {kn : Know} {kvf : List (MlS × BitVec 64 × FK)} {S Jb : BitVec 64}
    {db cd : BitVec 64} (hD : Dj { kn with S := some S, J := some Jb }) (hk : KnFull kn db cd) (hgn : nm "journal_n" ∈ a.sg.gw) :
    HoareG σ guestCtx (fun t => SI a { kn with S := some S, J := some Jb } kvf t ∧
        t.globals.lookup (nm "journal_cap") = some (.val (.word (BitVec.ofNat 64 524288))))
      (.seq (.assign .global (nm "journal_n") (cw 0))
        (.seq (.assign .global (nm "ts") (cw 0)) (.return (cw 0))))
      (NQr (fun _ => True) (FinG a db cd)) := by
  have h1 := step_assign_glob (σ := σ) (a := a) haC haH (g := nm "journal_n") (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (k := .scalar) (by decide) (v := BitVec.ofNat 64 0)
    (fun _ => trivial) (Or.inl hgn) (kn := { kn with S := some S, J := some Jb }) (kvf := kvf)
    (P := fun t => SI a { kn with S := some S, J := some Jb } kvf t ∧
        t.globals.lookup (nm "journal_cap") = some (.val (.word (BitVec.ofNat 64 524288))))
    (fun t h => h.1) (e := cw 0) (fun t _ => ev_cw t 0)
    (P' := fun t' => t'.globals.lookup (nm "journal_cap") = some (.val (.word (BitVec.ofNat 64 524288))) ∧
      t'.globals.lookup (nm "journal_n") = some (.val (.word (BitVec.ofNat 64 0))))
    (fun t h => ⟨by rw [HtabEntries.setG_ne (by decide)]; exact h.2, HtabEntries.setG_self⟩) (F := FinG a db cd)
  have h2 := step_assign_glob (σ := σ) (a := a) haC haH (g := nm "ts") (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (k := .nptr Types.tTS) (by decide) (v := BitVec.ofNat 64 0)
    (fun Γ' => Or.inl (by unfold nullMax; decide)) (Or.inr (by decide))
    (kn := { kn with S := some S, J := some Jb }) (kvf := kvf)
    (P := fun t => SI a { kn with S := some S, J := some Jb } kvf t ∧
      (t.globals.lookup (nm "journal_cap") = some (.val (.word (BitVec.ofNat 64 524288))) ∧
      t.globals.lookup (nm "journal_n") = some (.val (.word (BitVec.ofNat 64 0)))))
    (fun t h => h.1) (e := cw 0) (fun t _ => ev_cw t 0)
    (P' := fun t' => t'.globals.lookup (nm "journal_cap") = some (.val (.word (BitVec.ofNat 64 524288))) ∧
      t'.globals.lookup (nm "journal_n") = some (.val (.word (BitVec.ofNat 64 0))) ∧
      t'.globals.lookup (nm "ts") = some (.val (.word (BitVec.ofNat 64 0))))
    (fun t h => ⟨by rw [HtabEntries.setG_ne (by decide)]; exact h.2.1,
      by rw [HtabEntries.setG_ne (by decide)]; exact h.2.2, HtabEntries.setG_self⟩) (F := FinG a db cd)
  refine nqr_seq (J := fun t' => SI a { kn with S := some S, J := some Jb } kvf t' ∧
      (t'.globals.lookup (nm "journal_cap") = some (.val (.word (BitVec.ofNat 64 524288))) ∧
      t'.globals.lookup (nm "journal_n") = some (.val (.word (BitVec.ofNat 64 0))))) h1 ?_
  refine nqr_seq (J := fun t' => SI a { kn with S := some S, J := some Jb } kvf t' ∧
      (t'.globals.lookup (nm "journal_cap") = some (.val (.word (BitVec.ofNat 64 524288))) ∧
      t'.globals.lookup (nm "journal_n") = some (.val (.word (BitVec.ofNat 64 0))) ∧
      t'.globals.lookup (nm "ts") = some (.val (.word (BitVec.ofNat 64 0))))) h2 ?_
  refine nqr_ret ?_
  intro s hs ⟨⟨Γ, q, hext, hh, hS⟩, h3, h4, h5⟩ v hv
  rw [ev_cw] at hv
  cases hv
  refine ⟨rfl, kn, S, Jb, Γ, q, hD, hk, hext, heap_congr (s := gz s) hH rfl rfl rfl rfl hh,
    siC_locals hS (fun x hx => by cases hx) rfl rfl, h4, h5, h3⟩

end InitECandidate.Solver.MemSafe.Ini
