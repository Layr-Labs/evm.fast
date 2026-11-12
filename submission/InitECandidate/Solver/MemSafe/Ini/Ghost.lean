import InitECandidate.Solver.MemSafe.Ini.Clos

/-!
# The ghost state: `ws`, `bs`, `sk_buf`, `journal` zeroed

`gz s`: `s` with the globals of `hid` set to `0`. `ghost_run`: a function of the closure `dwFns` run from `s` and
from `gz s` gives the same result, `gz` of the first final state is the second, and the globals of `hid` are kept.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}

def zeroH (gl : HolFiniteMapExact MlS (ValueHOL 64)) : HolFiniteMapExact MlS (ValueHOL 64) :=
  hid.foldl (fun m g => m.update (g, .val (.word 0))) gl

def gz (s : State σ) : State σ := { s with globals := zeroH s.globals }

theorem zeroH_notin {gl : HolFiniteMapExact MlS (ValueHOL 64)} {g : MlS} (h : g ∉ hid) :
    (zeroH gl).lookup g = gl.lookup g := (zeroN_aux hid gl g).1 h

theorem zeroH_in {gl : HolFiniteMapExact MlS (ValueHOL 64)} {g : MlS} (h : g ∈ hid) :
    (zeroH gl).lookup g = some (.val (.word 0)) := (zeroN_aux hid gl g).2 h

theorem hid_mem {g : MlS} : g ∈ hid ↔ g = nm "ws" ∨ g = nm "bs" ∨ g = nm "sk_buf" ∨ g = nm "journal" := by
  simp [hid]

theorem grRel_gz (s : State σ) : GrRel hid (gz s) s :=
  ⟨s.globals, by
    unfold gz
    rfl, fun g hg => by
      show s.globals.lookup g = (zeroH s.globals).lookup g
      rw [zeroH_notin hg]⟩

theorem state_ext {t t' : State σ} (hl : t'.locals = t.locals) (hm : t'.memory = t.memory)
    (hd : t'.memaddrs = t.memaddrs) (hb : t'.be = t.be) (hg : ∀ g, t'.globals.lookup g = t.globals.lookup g)
    (hc : t'.clock = t.clock) (hcode : t'.code = t.code) (hst : t'.structs = t.structs)
    (hes : t'.eshapes = t.eshapes) (hsm : t'.shMemaddrs = t.shMemaddrs) (hf : t'.ffi = t.ffi)
    (hba : t'.baseAddr = t.baseAddr) (hta : t'.topAddr = t.topAddr) : t' = t := by
  have hg' : t'.globals = t.globals := HolFiniteMapExact.ext (funext hg)
  cases t; cases t'
  simp only at *
  subst hl hm hd hb hg' hc hcode hst hes hsm hf hba hta
  rfl

/-- **A closure function run from `s` and from `gz s`.** -/
theorem ghost_run {X : Ctx 64} (hX : X.code.lookup = guestCode) {f : MlS}
    (hf : (dwFns.map Prod.fst).contains f = true) {vs : List (ValueHOL 64)} {body : ProgHOL 64}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {rs : ShapeHOL}
    (hl : lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs)) (s : State σ)
    (hs : InCtx s X) :
    (evaluateHOLFiniteState (gz s) body).1 = (evaluateHOLFiniteState s body).1 ∧
      (evaluateHOLFiniteState (gz s) body).2 = gz (evaluateHOLFiniteState s body).2 ∧
      ∀ g ∈ hid, (evaluateHOLFiniteState s body).2.globals.lookup g = s.globals.lookup g := by
  obtain ⟨ps, hcode⟩ := lookupCode_some' hl
  rw [hX] at hcode
  have hbody : grFreeB hid (dwFns.map Prod.fst) body = true := grClosed_dw f hf ps body rs hcode
  have hcz : (gz s).code.lookup = guestCode := by
    show s.code.lookup = guestCode
    rw [hs.1, hX]
  obtain ⟨hres, gl, hrel, hglk⟩ := gr_preserved grClosed_dw body (gz s) s hbody hcz (grRel_gz s)
  have hgwC : ∀ g ∈ hid, GwClosed g (dwFns.map Prod.fst) guestCode := fun g hg =>
    closed_of_entries (chk := gwFreeB g) dwFns_valid (List.all_eq_true.mp dwFns_gw g hg)
  have hgw : ∀ g ∈ hid, ∀ s' : State σ, s'.code.lookup = guestCode →
      (evaluateHOLFiniteState s' body).2.globals.lookup g = s'.globals.lookup g := fun g hg s' hc' =>
    gw_preserved (hgwC g hg) body s' (hgwC g hg f hf ps body rs hcode) hc'
  have hcs : s.code.lookup = guestCode := by rw [hs.1, hX]
  refine ⟨hres.symm, ?_, fun g hg => hgw g hg s hcs⟩
  rw [hrel]
  symm
  refine state_ext rfl rfl rfl rfl (fun g => ?_) rfl rfl rfl rfl rfl rfl rfl rfl
  by_cases hg : g ∈ hid
  · have h1 := hgw g hg (gz s) hcz
    show (zeroH gl).lookup g = _
    rw [zeroH_in hg]
    rw [h1]
    show (some (.val (.word 0)) : Option (ValueHOL 64)) = (zeroH s.globals).lookup g
    rw [zeroH_in hg]
  · show (zeroH gl).lookup g = _
    rw [zeroH_notin hg, hglk g hg]

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.ghost_run
