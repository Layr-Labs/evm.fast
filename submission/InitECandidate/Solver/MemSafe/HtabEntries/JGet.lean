import InitECandidate.Solver.Spec.Mpt.Leaves.Nodedb
import InitECandidate.Solver.Spec.Inv.HtabGw
import InitECandidate.Solver.Spec.Inv.HtabTree

/-!
# `htab_get` for the journal entries

`jset` / `jdel` start with `var {1,1} old = htab_get(t, key)` and record `old` in the journal.

* `funSpec_get_gw`: `htab_get` (with `htab_find_leaf`, `memeq`) writes no global (`gwFreeB g` with
  `g` symbolic, reduced by `cbv`).
* `funSpec_get_j`: one returning call: memory, globals, domain and byte order unchanged, and the
  `HgRet` fact of `Spec.Mpt.Leaves.funSpec_htab_get_ret` (a found result is the `LEFT` field of a
  nonzero end of the root walk).
* `hg_leafVal`: in a well-formed table that end is a live leaf, so a found value is a leaf value
  (`LeafVal`); with the table hook's `ValOK` it fits the header type's value kind.
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def getFns : EntryList :=
  [fnEntry Guest.Software.guestFn_htab_get, fnEntry Guest.Software.guestFn_htab_find_leaf,
   fnEntry Guest.Software.guestFn_memeq]

theorem getFns_valid : ∀ e ∈ getFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [getFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 132) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 131) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 18) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
theorem getFns_gw (g : MlS) : getFns.all (fun e => gwFreeB g (getFns.map Prod.fst) e.2.2.1) = true := by
  conv => lhs; cbv

theorem get_mem' : (getFns.map Prod.fst).contains (nm "htab_get") = true := by decide_cbv

/-- `htab_get` writes no global. -/
theorem funSpec_get_gw (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_get") (fun _ s _ t => ∀ g, t.globals.lookup g = s.globals.lookup g) := by
  intro vs body callee rs hl s hs hloc r hr g
  exact funSpec_gw (g := g)
    (by rw [hC]; exact closed_of_entries (chk := gwFreeB g) getFns_valid (getFns_gw g))
    get_mem' vs body callee rs hl s hs hloc r hr

/-- **One call of `htab_get`**: nothing but the result changes, and a found result is the value of
the end of the root walk. -/
theorem funSpec_get_j (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_get") (fun vs s r t => t.memory = s.memory ∧
      (∀ g, t.globals.lookup g = s.globals.lookup g) ∧ t.memaddrs = s.memaddrs ∧ t.be = s.be ∧
      ∀ v, r = .returned v → ∀ T key, vs = [.val (.word T), .val (.word key)] →
        Mpt.Leaves.HgRet s T key v) := by
  have h1 := Mpt.Leaves.ndb_mw (σ := σ) hC Mpt.Leaves.htab_get_mem
  have h2 := funSpec_get_gw (σ := σ) hC
  have h3 := Mpt.Leaves.funSpec_htab_get_ret (σ := σ) hC
  intro vs body callee rs hl s hs hloc r hr
  exact ⟨h1 vs body callee rs hl s hs hloc r hr, h2 vs body callee rs hl s hs hloc r hr,
    memaddrs_preserved s body, Inv.be_preserved s body, h3 vs body callee rs hl s hs hloc r hr⟩

/-- A found `htab_get` value of a well-formed table is a leaf value. -/
theorem hg_leafVal {s : State σ} {T key a b : BitVec 64} (hwf : Inv.TableWF s T)
    (h : Mpt.Leaves.HgRet s T key (.rStruct [.val (.word a), .val (.word b)])) (ha : a ≠ 0) :
    Inv.LeafVal s.memory T b := by
  obtain ⟨leaf, hw, hl0, rfl⟩ := h a b rfl ha
  obtain ⟨-, L, hsh, -⟩ := hwf
  have hroot : Inv.hdr s.memory T 56 ≠ 0 := by
    intro h0
    rw [h0] at hw
    cases hw with
    | zero => exact hl0 rfl
    | leaf hn _ => exact hn rfl
    | left hn _ _ _ => exact hn rfl
    | right hn _ _ _ => exact hn rfl
  obtain ⟨-, hL, hk⟩ := Inv.walk_anc hsh hw (hsh.root_live hroot).1
  obtain ⟨j, hj, hord⟩ := hsh.leaf_ordered leaf hL hk
  exact ⟨j, hj, by rw [hord]⟩

end InitECandidate.Solver.MemSafe.HtabEntries
