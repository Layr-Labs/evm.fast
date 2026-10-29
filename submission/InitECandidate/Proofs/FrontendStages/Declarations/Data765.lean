import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify749
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body765_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def body765_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_set_inf" [Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def body765_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body765_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_double"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def body765_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body765_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "started") (Flapjack.Exp.const 1#64)) body765_3 body765_4

def body765_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc",
    Flapjack.Exp.var Flapjack.VarKind.local "base"]

def body765_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "started" (Flapjack.Exp.const 1#64)

def body765_8 : Prog (BitVec 64) :=
.seq body765_6 body765_7

def body765_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit") (Flapjack.Exp.const 1#64)) body765_8 body765_4

def body765_10 : Prog (BitVec 64) :=
.dec ("bit") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr
      (Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "kptr",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "i")
                  (Flapjack.Exp.const 6#64),
                Flapjack.Exp.const 8#64]]))
      (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 63#64]),
    Flapjack.Exp.const 1#64]) body765_9

def body765_11 : Prog (BitVec 64) :=
.seq body765_5 body765_10

def body765_12 : Prog (BitVec 64) :=
.seq body765_2 body765_11

def body765_13 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body765_12

def body765_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def body765_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body765_16 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body765_17 : Prog (BitVec 64) :=
.seq body765_15 body765_16

def body765_18 : Prog (BitVec 64) :=
.seq body765_14 body765_17

def body765_19 : Prog (BitVec 64) :=
.seq body765_13 body765_18

def body765_20 : Prog (BitVec 64) :=
.dec ("started") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body765_19

def body765_21 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 64#64]) body765_20

def body765_22 : Prog (BitVec 64) :=
.seq body765_1 body765_21

def body765_23 : Prog (BitVec 64) :=
.seq body765_0 body765_22

def body765_24 : Prog (BitVec 64) :=
.decCall ("base") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body765_23

def body765_25 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body765_24

def body765_26 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body765_25

def body765_27 : Prog (BitVec 64) :=
.seq body765_0 body765_1

def body765_28 : Prog (BitVec 64) :=
.seq body765_2 body765_5

def body765_29 : Prog (BitVec 64) :=
.seq body765_28 body765_10

def body765_30 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body765_29

def body765_31 : Prog (BitVec 64) :=
.seq body765_30 body765_14

def body765_32 : Prog (BitVec 64) :=
.seq body765_31 body765_15

def body765_33 : Prog (BitVec 64) :=
.seq body765_32 body765_16

def body765_34 : Prog (BitVec 64) :=
.dec ("started") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body765_33

def body765_35 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 64#64]) body765_34

def body765_36 : Prog (BitVec 64) :=
.seq body765_27 body765_35

def body765_37 : Prog (BitVec 64) :=
.decCall ("base") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body765_36

def body765_38 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body765_37

def body765_39 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body765_38

def originalData765 : Decl (BitVec 64) :=
.function { name := "g1_mul", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("kptr", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body765_26, returnShape := (Flapjack.Shape.one) }
def simplifiedData765 : Decl (BitVec 64) :=
.function { name := "g1_mul", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("kptr", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body765_39, returnShape := (Flapjack.Shape.one) }
def original765 := Pancake.PanLang.declToHOL originalData765
def simplified765 := Pancake.PanLang.declToHOL simplifiedData765
end InitECandidate.Proofs.FrontendStages.Declarations
