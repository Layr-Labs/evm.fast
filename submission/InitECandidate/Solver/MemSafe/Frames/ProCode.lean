import InitECandidate.Solver.MemSafe.Frames.Incorporate

/-!
# `frame_prologue`: the code (frames9, task 2b, step 1)

```
fun 1 frame_prologue() {
  skip; var msg = lds 1 (ev + EV_MSG);
  if (lds 1 (msg + 136)) != 0 {
    var {1,1,1,1} v = lds {1,1,1,1} (msg + 56); var 1 z = u256_is_zero(v);
    if z == 0 {
      move_ether(lds 1 (msg + 16), lds 1 (msg + 32), v);
      var 1 same = memeq(lds 1 (msg + 16), lds 1 (msg + 32), 20);
      if same == 0 { emit_transfer_log(lds 1 (msg + 16), lds 1 (msg + 32), v); } } }
  var ca = lds 1 (msg + 104);
  if ca != 0 { var 1 pi = precompile_index(ca);
    if pi != 0 { if (lds 1 (msg + 168)) == 0 { run_precompile(pi); } return 1; } }
  skip; return 0; }
```

`entry_pro` / **`code_pro`**: the body below is the guest's (`guestAst[580]`).
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The 4-word value `v`'s shape. -/
abbrev sh4 : ShapeHOL := .comb [.one, .one, .one, .one]

/-- The value transfer (`MSG 136 ≠ 0`). -/
def proXfer : ProgHOL 64 :=
  .ite (.cmp .notEqual (lLoad "msg" 136) (cw 0))
    (.dec (nm "v") sh4 (.load sh4 (.op .add [lv (nm "msg"), cw 56]))
      (.decCall (nm "z") .one (nm "u256_is_zero") [lv (nm "v")]
        (.ite (.cmp .equal (lv (nm "z")) (cw 0))
          (.seq (callD (nm "move_ether") [lLoad "msg" 16, lLoad "msg" 32, lv (nm "v")])
            (.decCall (nm "same") .one (nm "memeq") [lLoad "msg" 16, lLoad "msg" 32, cw 20]
              (.ite (.cmp .equal (lv (nm "same")) (cw 0))
                (callD (nm "emit_transfer_log") [lLoad "msg" 16, lLoad "msg" 32, lv (nm "v")])
                .skip)))
          .skip)))
    .skip

/-- The precompile dispatch (`MSG 104 ≠ 0`). -/
def proPre : ProgHOL 64 :=
  .ite (.cmp .notEqual (lv (nm "ca")) (cw 0))
    (.decCall (nm "pi") .one (nm "precompile_index") [lv (nm "ca")]
      (.ite (.cmp .notEqual (lv (nm "pi")) (cw 0))
        (.seq
          (.ite (.cmp .equal (lLoad "msg" 168) (cw 0))
            (callD (nm "run_precompile") [lv (nm "pi")])
            .skip)
          (.return (cw 1)))
        .skip))
    .skip

def proBody : ProgHOL 64 :=
  .seq .skip
    (.dec (nm "msg") .one (gLoad "ev" 112)
      (.seq proXfer
        (.dec (nm "ca") .one (lLoad "msg" 104)
          (.seq proPre (.seq .skip (.return (cw 0)))))))

theorem entry_pro : fnEntry Guest.Software.guestFn_frame_prologue =
    (nm "frame_prologue", [], proBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_pro : guestCode (nm "frame_prologue") = some ([], proBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 580) (by decide)) ⟨_, rfl⟩
    entry_pro

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.code_pro
