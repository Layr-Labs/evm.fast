import InitECandidate.Solver.MemSafe.Trie.Lift
import InitECandidate.Solver.Band4.MptSet
import InitECandidate.Solver.MemSafe.Trie.MpsPost

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `SumSpecA` summaries of the encoder entry points

* `sumSpecA_node_rlp` / `sumSpecA_node_hash`: signature `[fits nodeU]`, `Pre = True`, no extra writes.
* `sumSpecA_mpt_root`: signature `[any, buf 32]`, `Pre = MRec` (the handle `m` is an allocated heap block outside
  `Γ` whose root slot is `0` or a node), no extra writes beyond the output buffer.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.Band (NdOf nodeTys)

variable {σ : Type} {X : Ctx 64}

def nodeSig (g : Bool) : Sig := ⟨[.fits nodeU], [], [], g⟩

/-- The aligned changed cells of any function. -/
theorem aligned_changed (hA : AlignedDom X) (f : MlS) :
    FunSpec σ X f (fun _ s _ t => ∀ a, t.memory a ≠ s.memory a → a.toNat % 8 = 0) :=
  FunSpec.mono (WaveHelpers.funSpec_aligned (σ := σ) hA f) fun vs s r t h a ha => by
    by_contra h8
    exact ha (h (fun a => t.memory a ≠ s.memory a) (fun x hx => not_not.mp hx) a (fun hh => h8 hh.2))

theorem fits_nodeU_cases {Γ : Gam} {w : BitVec 64} (h : Fits Γ nodeU w) :
    NdOf Γ w ∨ w.toNat < nullMax := by
  rcases h with h | ⟨o, ho, hb, ht⟩
  · exact Or.inr h
  · exact Or.inl ⟨o, ho, hb, by simpa [nodeTys] using ht⟩

theorem sumSpecA_node_rlp (hF : FoldOK σ X guestC (HR (σ := σ))) (hT : DomTop X)
    (hX0 : DomBounded X) (g : Bool) :
    SumSpecA σ X guestC HR (nm "node_rlp") (nodeSig g) (fun _ _ _ => True) (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) := by
  refine FunSpec.mono (((nodeRlpG hF.hX hF.hal hT hF.hNS hX0).and (funSpec_dom (σ := σ) (nm "node_rlp"))).and
    (aligned_changed hF.hal (nm "node_rlp"))) ?_
  rintro vs s r t ⟨⟨hN, hd, hbe⟩, hAl⟩ hg hna Γ hG ⟨p, hp, hlen, hA⟩ -
  obtain ⟨p0, hp0, hord, -⟩ := id hG
  rw [hp] at hp0
  cases hp0
  match vs, hlen with
  | [v0], _ =>
    obtain ⟨w, hw, hf⟩ := hA 0 (.fits nodeU) v0 rfl rfl
    obtain rfl : v0 = .val (.word w) := by
      cases v0 with
      | val x => cases x; simp [wordOf] at hw; rw [hw]
      | rStruct _ => simp [wordOf] at hw
      | nStruct _ _ => simp [wordOf] at hw
    obtain ⟨hTr, hLn⟩ := trie_of_G hG hp
    obtain ⟨hfoot, -⟩ := hN hg w p (NdOf Γ) rfl hp hord hTr (fits_nodeU_cases hf) hLn
    obtain ⟨p', hq, hcore⟩ := sumCore_of_footX hF (sg := nodeSig g) (PW := fun a => ProtCell guestC Γ a ∧ False) hG hp
      (footX_of_foot (Ex := fun _ => False) hfoot) hd hbe hAl (fun a ha => ha.elim) rfl
    exact ⟨Γ, p, p', hcore, trivial⟩

theorem sumSpecA_node_hash (hF : FoldOK σ X guestC (HR (σ := σ))) (hT : DomTop X)
    (hX0 : DomBounded X) (g : Bool) :
    SumSpecA σ X guestC HR (nm "node_hash") (nodeSig g) (fun _ _ _ => True) (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) := by
  refine FunSpec.mono (((nodeHashG hF.hX hF.hal hT hF.hNS hX0).and (funSpec_dom (σ := σ) (nm "node_hash"))).and
    (aligned_changed hF.hal (nm "node_hash"))) ?_
  rintro vs s r t ⟨⟨hN, hd, hbe⟩, hAl⟩ hg hna Γ hG ⟨p, hp, hlen, hA⟩ -
  obtain ⟨p0, hp0, hord, -⟩ := id hG
  rw [hp] at hp0
  cases hp0
  match vs, hlen with
  | [v0], _ =>
    obtain ⟨w, hw, hf⟩ := hA 0 (.fits nodeU) v0 rfl rfl
    obtain rfl : v0 = .val (.word w) := by
      cases v0 with
      | val x => cases x; simp [wordOf] at hw; rw [hw]
      | rStruct _ => simp [wordOf] at hw
      | nStruct _ _ => simp [wordOf] at hw
    obtain ⟨hTr, hLn⟩ := trie_of_G hG hp
    have hfoot := hN hg w p (NdOf Γ) rfl hp hord hTr (fits_nodeU_cases hf) hLn
    obtain ⟨p', hq, hcore⟩ := sumCore_of_footX hF (sg := nodeSig g) (PW := fun a => ProtCell guestC Γ a ∧ False)
      hG hp (footX_of_foot (Ex := fun _ => False) hfoot) hd hbe hAl (fun a ha => ha.elim) rfl
    exact ⟨Γ, p, p', hcore, trivial⟩

def mrSig (g : Bool) : Sig := ⟨[.any, .buf 32], [], [], g⟩

/-- `mpt_root`'s precondition: the handle record (`mpt_new`) and the output buffer. -/
def MrPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ m out : BitVec 64, vs = [.val (.word m), .val (.word out)] ∧ MRecF Γ s m

theorem sumSpecA_mpt_root (hF : FoldOK σ X guestC (HR (σ := σ))) (hT : DomTop X)
    (hX0 : DomBounded X) (g : Bool) :
    SumSpecA σ X guestC HR (nm "mpt_root") (mrSig g) MrPre (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) := by
  refine FunSpec.mono (((mptRootG hF.hX hF.hal hT hF.hNS hX0).and (funSpec_dom (σ := σ) (nm "mpt_root"))).and
    (aligned_changed hF.hal (nm "mpt_root"))) ?_
  rintro vs s r t ⟨⟨hN, hd, hbe⟩, hAl⟩ hg hna Γ hG ⟨p, hp, hargs⟩ ⟨m, out, rfl, hMR⟩
  obtain ⟨p0, hp0, hord, hL, -⟩ := id hG
  rw [hp] at hp0
  cases hp0
  obtain ⟨-, hpm, -, -, -, -, -, hroot⟩ := hMR
  obtain ⟨hTr, hLn⟩ := trie_of_G hG hp
  have hps : (mrSig g).params[1]? = some (.buf 32) := rfl
  obtain ⟨D, hD, hDb⟩ := bufPreK_of_args hps (by decide) hord hL hargs
  simp only [argW, wordOf, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hD
  subst hD
  have hfoot := hN hg m out p (NdOf Γ) rfl hp hord hDb hTr hLn
    (by by_cases h0 : rd s.memory m = 0
        · exact Or.inl h0
        · exact Or.inr (fits_nodeU_cases hroot))
  have hEx : ∀ a, Overlap out.toNat 32 a → BufCell guestC Γ a ∧ ArgCells (mrSig g).params
      [.val (.word m), .val (.word out)] a := fun a ha =>
    ⟨bufCell_of_arg hargs (WaveHelpers.argCells_buf_at (i := 1) (n := 32) (w := out) hps rfl ha),
     WaveHelpers.argCells_buf_at (i := 1) (n := 32) (w := out) hps rfl ha⟩
  obtain ⟨p', hq, hcore⟩ := sumCore_of_footX hF (sg := mrSig g) (PW := fun a => ProtCell guestC Γ a ∧ False)
    hG hp hfoot hd hbe hAl hEx rfl
  exact ⟨Γ, p, p', hcore, trivial⟩

end InitECandidate.Solver.MemSafe.Trie
