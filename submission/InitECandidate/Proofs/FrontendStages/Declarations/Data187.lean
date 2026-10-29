import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify171
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body187_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "zero_hashes",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.const 32#64]],
    Flapjack.Exp.const 32#64]

def body187_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body187_2 : Prog (BitVec 64) :=
.seq body187_0 body187_1

def body187_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body187_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) body187_2 body187_3

def body187_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64]]

def body187_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "buf",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64]],
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.var Flapjack.VarKind.local "size", Flapjack.Exp.var Flapjack.VarKind.local "n"],
        Flapjack.Exp.const 32#64]]

def body187_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_pair"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "buf",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 64#64]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "buf",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 64#64],
        Flapjack.Exp.const 32#64],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "buf",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 32#64]]]

def body187_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body187_9 : Prog (BitVec 64) :=
.seq body187_7 body187_8

def body187_10 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "half")) body187_9

def body187_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cur" (Flapjack.Exp.var Flapjack.VarKind.local "half")

def body187_12 : Prog (BitVec 64) :=
.seq body187_10 body187_11

def body187_13 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body187_12

def body187_14 : Prog (BitVec 64) :=
.dec ("half") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "cur") (Flapjack.Exp.const 1#64)) body187_13

def body187_15 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "cur")) body187_14

def body187_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_pair"
  [Flapjack.Exp.var Flapjack.VarKind.local "buf",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "zero_hashes",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 32#64]],
    Flapjack.Exp.var Flapjack.VarKind.local "buf"]

def body187_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 1#64])

def body187_18 : Prog (BitVec 64) :=
.seq body187_16 body187_17

def body187_19 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "d")
  (Flapjack.Exp.var Flapjack.VarKind.local "target")) body187_18

def body187_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "buf",
    Flapjack.Exp.const 32#64]

def body187_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body187_22 : Prog (BitVec 64) :=
.seq body187_21 body187_1

def body187_23 : Prog (BitVec 64) :=
.seq body187_20 body187_22

def body187_24 : Prog (BitVec 64) :=
.seq body187_19 body187_23

def body187_25 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "dn") body187_24

def body187_26 : Prog (BitVec 64) :=
.seq body187_15 body187_25

def body187_27 : Prog (BitVec 64) :=
.dec ("cur") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "size") body187_26

def body187_28 : Prog (BitVec 64) :=
.seq body187_6 body187_27

def body187_29 : Prog (BitVec 64) :=
.seq body187_5 body187_28

def body187_30 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "size", Flapjack.Exp.const 32#64]]) body187_29

def body187_31 : Prog (BitVec 64) :=
.dec ("size") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "dn")) body187_30

def body187_32 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body187_31

def body187_33 : Prog (BitVec 64) :=
.seq body187_4 body187_32

def body187_34 : Prog (BitVec 64) :=
.decCall ("target") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "dl", Flapjack.Exp.var Flapjack.VarKind.local "dn"]) body187_33

def body187_35 : Prog (BitVec 64) :=
.decCall ("dn") (Flapjack.Shape.one) ("ceil_log2") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) body187_34

def body187_36 : Prog (BitVec 64) :=
.decCall ("dl") (Flapjack.Shape.one) ("ceil_log2") ([Flapjack.Exp.var Flapjack.VarKind.local "limit"]) body187_35

def body187_37 : Prog (BitVec 64) :=
.seq body187_5 body187_6

def body187_38 : Prog (BitVec 64) :=
.seq body187_19 body187_20

def body187_39 : Prog (BitVec 64) :=
.seq body187_38 body187_21

def body187_40 : Prog (BitVec 64) :=
.seq body187_39 body187_1

def body187_41 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "dn") body187_40

def body187_42 : Prog (BitVec 64) :=
.seq body187_15 body187_41

def body187_43 : Prog (BitVec 64) :=
.dec ("cur") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "size") body187_42

def body187_44 : Prog (BitVec 64) :=
.seq body187_37 body187_43

def body187_45 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "size", Flapjack.Exp.const 32#64]]) body187_44

def body187_46 : Prog (BitVec 64) :=
.dec ("size") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "dn")) body187_45

def body187_47 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body187_46

def body187_48 : Prog (BitVec 64) :=
.seq body187_4 body187_47

def body187_49 : Prog (BitVec 64) :=
.decCall ("target") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "dl", Flapjack.Exp.var Flapjack.VarKind.local "dn"]) body187_48

def body187_50 : Prog (BitVec 64) :=
.decCall ("dn") (Flapjack.Shape.one) ("ceil_log2") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) body187_49

def body187_51 : Prog (BitVec 64) :=
.decCall ("dl") (Flapjack.Shape.one) ("ceil_log2") ([Flapjack.Exp.var Flapjack.VarKind.local "limit"]) body187_50

def originalData187 : Decl (BitVec 64) :=
.function { name := "merkleize", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("limit", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body187_36, returnShape := (Flapjack.Shape.one) }
def simplifiedData187 : Decl (BitVec 64) :=
.function { name := "merkleize", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("limit", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body187_51, returnShape := (Flapjack.Shape.one) }
def original187 := Pancake.PanLang.declToHOL originalData187
def simplified187 := Pancake.PanLang.declToHOL simplifiedData187
end InitECandidate.Proofs.FrontendStages.Declarations
