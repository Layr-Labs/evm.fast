import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify186
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body202_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body202_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body202_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) body202_0 body202_1

def body202_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 10#64]

def body202_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "o")
        (Flapjack.Exp.var Flapjack.VarKind.local "fixed"),
      Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "len")
        (Flapjack.Exp.var Flapjack.VarKind.local "o")])) body202_3 body202_1

def body202_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 11#64]

def body202_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "o")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "offs",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]],
        Flapjack.Exp.const 8#64]))) body202_5 body202_1

def body202_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body202_6 body202_1

def body202_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body202_9 : Prog (BitVec 64) :=
.seq body202_7 body202_8

def body202_10 : Prog (BitVec 64) :=
.seq body202_4 body202_9

def body202_11 : Prog (BitVec 64) :=
.dec ("o") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "offs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])) body202_10

def body202_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body202_11

def body202_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 12#64]

def body202_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "offs"))
  (Flapjack.Exp.var Flapjack.VarKind.local "fixed")) body202_13 body202_1

def body202_15 : Prog (BitVec 64) :=
.seq body202_14 body202_0

def body202_16 : Prog (BitVec 64) :=
.seq body202_12 body202_15

def body202_17 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body202_16

def body202_18 : Prog (BitVec 64) :=
.seq body202_2 body202_17

def body202_19 : Prog (BitVec 64) :=
.seq body202_4 body202_7

def body202_20 : Prog (BitVec 64) :=
.seq body202_19 body202_8

def body202_21 : Prog (BitVec 64) :=
.dec ("o") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "offs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])) body202_20

def body202_22 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body202_21

def body202_23 : Prog (BitVec 64) :=
.seq body202_22 body202_14

def body202_24 : Prog (BitVec 64) :=
.seq body202_23 body202_0

def body202_25 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body202_24

def body202_26 : Prog (BitVec 64) :=
.seq body202_2 body202_25

def originalData202 : Decl (BitVec 64) :=
.function { name := "ssz_check_offsets", inline := false, exported := false, params := [("offs", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("fixed", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body202_18, returnShape := (Flapjack.Shape.one) }
def simplifiedData202 : Decl (BitVec 64) :=
.function { name := "ssz_check_offsets", inline := false, exported := false, params := [("offs", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("fixed", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body202_26, returnShape := (Flapjack.Shape.one) }
def original202 := Pancake.PanLang.declToHOL originalData202
def simplified202 := Pancake.PanLang.declToHOL simplifiedData202
end InitECandidate.Proofs.FrontendStages.Declarations
