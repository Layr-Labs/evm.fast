import InitECandidate.Solver.MemSafe.Trie.CsrIn

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: `htab_set` with a read-only key

`hset_stmt`: `htab_set(T, key, val);` under an arbitrary invariant `E` with the key owned by another table.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem hset_stmt {a : Act σ} (ha : ActOK a guestCtx) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) {th : Nat}
    (hth : th ∈ Types.hdrTys) (hcH : capSub (HtabEntries.capsHT th) a.caps = true)
    {args : List (ExpHOL 64)} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {T key val : BitVec 64}
    (hev : ∀ s : State σ, L s.locals → evs s args =
      some [.val (.word T), .val (.word key), .val (.word val)])
    (hT : ∀ (s : State σ) Γ q, Heap a Γ q s → E Γ q s.memory → ∃ o ∈ Γ, o.base = T ∧ o.ty = th)
    (hV : ∀ (s : State σ) Γ q, Heap a Γ q s → E Γ q s.memory → Fits Γ (valK th) val)
    (hRK : ∀ (s : State σ) Γ q, Heap a Γ q s → E Γ q s.memory →
      key.toNat + htKL th ≤ 2 ^ 64 ∧ ∃ o ∈ Γ, o.base = T ∧ o.ty = th ∧
      ∀ a : Nat, key.toNat ≤ a → a < key.toNat + htKL th → ∃ x ∈ Γ, x.lo ≤ a ∧ a < x.hi ∧ ¬ Owns o x)
    (hpres : ∀ (s st : State σ) (Γ Γ' : Gam) (q q' : Ptrs),
      Ext Γ Γ' → Heap a Γ q s → Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' →
      Mod a (HtabEntries.setSigR th) (HtabEntries.capsHT th)
        [.val (.word T), .val (.word key), .val (.word val)] Γ q s st → E Γ q s.memory →
      E Γ' q' st.memory)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI a L E) (.call (some (none, none)) (nm "htab_set") args) (GP a L E Rv) := by
  have hsum : SumSpecA σ guestCtx a.Cb a.H (nm "htab_set") (HtabEntries.setSigR th) (HtabEntries.RdKeyPre th)
      (fun _ s Γ x => CapPW (HtabEntries.capsHT th) s Γ x)
      (fun _ _ Γ _ _ Γ' => ∀ o ∈ Γ', (Types.guestC.ty o.ty).region = .scratch →
        ∃ o0 ∈ Γ, o0.base = o.base ∧ o0.ty = o.ty) := by
    rw [hCb, haH]
    exact HtabEntries.sumSpecA_htab_set_rd (Rec.foldOK_guestR (σ := σ)) Hooks.guestHooksR_mono
      htabHooks_guestR hth
  have hnb : (HtabEntries.setSigR th).params.all noBufP = true := by
    unfold HtabEntries.setSigR HtabEntries.valPT
    split <;> rfl
  refine gp_callX ha (cs := HtabEntries.capsHT th) hcH hsum (funSpec_true _) (by simp [HtabEntries.setSigR])
    (fun _ => hgr) ?_ ?_
  · intro s Γ q hs hL hh hE vs hvs
    rw [hev s hL] at hvs
    cases hvs
    obtain ⟨hkb, o, ho, hob, hot, hx⟩ := hRK s Γ q hh hE
    have h0 : ArgOK Types.guestC Γ q [.val (.word T), .val (.word key), .val (.word val)] (.fits (.ptr th))
        (.val (.word T)) := ⟨T, rfl, hT s Γ q hh hE⟩
    have h1 : ArgOK Types.guestC Γ q [.val (.word T), .val (.word key), .val (.word val)] .any
        (.val (.word key)) := trivial
    have h2 : ArgOK Types.guestC Γ q [.val (.word T), .val (.word key), .val (.word val)]
        (HtabEntries.valPT th) (.val (.word val)) := by
      unfold HtabEntries.valPT
      split
      · trivial
      · exact ⟨_, rfl, hV s Γ q hh hE⟩
    rw [hCb]
    exact ⟨HtabEntries.argsOK3 h0 h1 h2, fun x hx => (argCells_nb hnb hx).elim,
      fun callee => ⟨T, key, val, rfl, hkb, o, ho, hob, hot, hx⟩⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    rw [hev s hL] at hvs
    cases hvs
    exact ⟨hQ, fun _ => hpres s st Γ Γ' q q' hext hh hh' hmo hnf hmd hE⟩

theorem setSigR_nb (th : Nat) : (HtabEntries.setSigR th).params.all noBufP = true := by
  unfold HtabEntries.setSigR HtabEntries.valPT
  split <;> rfl

/-- The key precondition of `hset_stmt` from a key owned by a table of another type. -/
theorem rdkey_core {Γ : Gam} (hGO : GamOK Γ) {th t : Nat} (hth : th ∈ Types.hdrTys) (ht : t ∈ Types.hdrTys)
    (hne : th ≠ t) {B T key : BitVec 64} (hKL : htKL t = htKL th) (hk : KeyIn Γ B t key (htKL th))
    (hT : ∃ od ∈ Γ, od.base = T ∧ od.ty = th) :
    key.toNat + htKL th ≤ 2 ^ 64 ∧ ∃ o ∈ Γ, o.base = T ∧ o.ty = th ∧
      ∀ a : Nat, key.toNat ≤ a → a < key.toNat + htKL th → ∃ x ∈ Γ, x.lo ≤ a ∧ a < x.hi ∧ ¬ Owns o x := by
  obtain ⟨od, hod, hodb, hodt⟩ := hT
  obtain ⟨hkb, o, ho, hob, hot, hx⟩ := hk
  refine ⟨hkb, od, hod, hodb, hodt, fun a h1 h2 => ?_⟩
  obtain ⟨x, hxm, hl, hh, hown⟩ := hx a h1 h2
  refine ⟨x, hxm, hl, hh, fun hown' => ?_⟩
  have := own_unique hGO ho hod (by rw [hot]; exact hkOf_of_tab ht) (by rw [hodt]; exact hkOf_of_tab hth)
    hxm hown hown'
  subst this
  exact hne (hodt.symm.trans hot)

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.rdkey_core
