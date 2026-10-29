import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify615
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body631_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn_from_be"
  [Flapjack.Exp.var Flapjack.VarKind.local "mp", Flapjack.Exp.var Flapjack.VarKind.local "mlen",
    Flapjack.Exp.var Flapjack.VarKind.local "md"]

def body631_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "mlen"]

def body631_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body631_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body631_4 : Prog (BitVec 64) :=
.seq body631_2 body631_3

def body631_5 : Prog (BitVec 64) :=
.seq body631_1 body631_4

def body631_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body631_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) body631_5 body631_6

def body631_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn_from_be"
  [Flapjack.Exp.var Flapjack.VarKind.local "bp", Flapjack.Exp.var Flapjack.VarKind.local "blen",
    Flapjack.Exp.var Flapjack.VarKind.local "bd"]

def body631_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn_mod"
  [Flapjack.Exp.var Flapjack.VarKind.local "bd", Flapjack.Exp.var Flapjack.VarKind.local "nbd",
    Flapjack.Exp.var Flapjack.VarKind.local "md", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.var Flapjack.VarKind.local "q",
    Flapjack.Exp.var Flapjack.VarKind.local "un", Flapjack.Exp.var Flapjack.VarKind.local "vn"]

def body631_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]

def body631_11 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "r") (Flapjack.Exp.const 1#64)

def body631_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal
        (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "md"))
        (Flapjack.Exp.const 1#64))]) body631_6 body631_11

def body631_13 : Prog (BitVec 64) :=
.seq body631_10 body631_12

def body631_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "base",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]

def body631_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1#64])

def body631_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "prod"]

def body631_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn_mod"
  [Flapjack.Exp.var Flapjack.VarKind.local "prod",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "n"],
    Flapjack.Exp.var Flapjack.VarKind.local "md", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "q",
    Flapjack.Exp.var Flapjack.VarKind.local "un", Flapjack.Exp.var Flapjack.VarKind.local "vn"]

def body631_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "prod"]

def body631_19 : Prog (BitVec 64) :=
.seq body631_18 body631_17

def body631_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.op Flapjack.BinOp.sub
                [Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "ep", Flapjack.Exp.var Flapjack.VarKind.local "elen"],
                  Flapjack.Exp.const 1#64],
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "t")
                (Flapjack.Exp.const 3#64)]))
        (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 7#64]),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)) body631_19 body631_6

def body631_21 : Prog (BitVec 64) :=
.seq body631_17 body631_20

def body631_22 : Prog (BitVec 64) :=
.seq body631_16 body631_21

def body631_23 : Prog (BitVec 64) :=
.seq body631_15 body631_22

def body631_24 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "t")) body631_23

def body631_25 : Prog (BitVec 64) :=
.seq body631_14 body631_24

def body631_26 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 0#64)) body631_13 body631_25

def body631_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn_to_be"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "mlen"]

def body631_28 : Prog (BitVec 64) :=
.seq body631_27 body631_4

def body631_29 : Prog (BitVec 64) :=
.seq body631_26 body631_28

def body631_30 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("be_top_bit") ([Flapjack.Exp.var Flapjack.VarKind.local "ep", Flapjack.Exp.var Flapjack.VarKind.local "elen"]) body631_29

def body631_31 : Prog (BitVec 64) :=
.seq body631_9 body631_30

def body631_32 : Prog (BitVec 64) :=
.seq body631_8 body631_31

def body631_33 : Prog (BitVec 64) :=
.decCall ("vn") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) body631_32

def body631_34 : Prog (BitVec 64) :=
.decCall ("un") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "big", Flapjack.Exp.const 8#64],
      Flapjack.Exp.const 16#64]]) body631_33

def body631_35 : Prog (BitVec 64) :=
.decCall ("q") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "big", Flapjack.Exp.const 8#64],
      Flapjack.Exp.const 8#64]]) body631_34

def body631_36 : Prog (BitVec 64) :=
.decCall ("prod") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "n"],
      Flapjack.Exp.const 8#64]]) body631_35

def body631_37 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) body631_36

def body631_38 : Prog (BitVec 64) :=
.decCall ("base") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) body631_37

def body631_39 : Prog (BitVec 64) :=
.decCall ("bd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "big", Flapjack.Exp.const 8#64],
      Flapjack.Exp.const 8#64]]) body631_38

def body631_40 : Prog (BitVec 64) :=
.decCall ("big") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "nbd",
  Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]]) body631_39

def body631_41 : Prog (BitVec 64) :=
.dec ("nbd") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blen", Flapjack.Exp.const 3#64])
  (Flapjack.Exp.const 2#64)) body631_40

def body631_42 : Prog (BitVec 64) :=
.seq body631_7 body631_41

def body631_43 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("digits_len") ([Flapjack.Exp.var Flapjack.VarKind.local "md", Flapjack.Exp.var Flapjack.VarKind.local "nmd"]) body631_42

def body631_44 : Prog (BitVec 64) :=
.seq body631_0 body631_43

def body631_45 : Prog (BitVec 64) :=
.decCall ("md") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nmd", Flapjack.Exp.const 8#64],
      Flapjack.Exp.const 8#64]]) body631_44

def body631_46 : Prog (BitVec 64) :=
.dec ("nmd") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "mlen", Flapjack.Exp.const 3#64])
  (Flapjack.Exp.const 2#64)) body631_45

def body631_47 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body631_46

def body631_48 : Prog (BitVec 64) :=
.seq body631_1 body631_2

def body631_49 : Prog (BitVec 64) :=
.seq body631_48 body631_3

def body631_50 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) body631_49 body631_6

def body631_51 : Prog (BitVec 64) :=
.seq body631_8 body631_9

def body631_52 : Prog (BitVec 64) :=
.seq body631_15 body631_16

def body631_53 : Prog (BitVec 64) :=
.seq body631_52 body631_17

def body631_54 : Prog (BitVec 64) :=
.seq body631_53 body631_20

def body631_55 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "t")) body631_54

def body631_56 : Prog (BitVec 64) :=
.seq body631_14 body631_55

def body631_57 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 0#64)) body631_13 body631_56

def body631_58 : Prog (BitVec 64) :=
.seq body631_57 body631_27

def body631_59 : Prog (BitVec 64) :=
.seq body631_58 body631_2

def body631_60 : Prog (BitVec 64) :=
.seq body631_59 body631_3

def body631_61 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("be_top_bit") ([Flapjack.Exp.var Flapjack.VarKind.local "ep", Flapjack.Exp.var Flapjack.VarKind.local "elen"]) body631_60

def body631_62 : Prog (BitVec 64) :=
.seq body631_51 body631_61

def body631_63 : Prog (BitVec 64) :=
.decCall ("vn") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) body631_62

def body631_64 : Prog (BitVec 64) :=
.decCall ("un") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "big", Flapjack.Exp.const 8#64],
      Flapjack.Exp.const 16#64]]) body631_63

def body631_65 : Prog (BitVec 64) :=
.decCall ("q") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "big", Flapjack.Exp.const 8#64],
      Flapjack.Exp.const 8#64]]) body631_64

def body631_66 : Prog (BitVec 64) :=
.decCall ("prod") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "n"],
      Flapjack.Exp.const 8#64]]) body631_65

def body631_67 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) body631_66

def body631_68 : Prog (BitVec 64) :=
.decCall ("base") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) body631_67

def body631_69 : Prog (BitVec 64) :=
.decCall ("bd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "big", Flapjack.Exp.const 8#64],
      Flapjack.Exp.const 8#64]]) body631_68

def body631_70 : Prog (BitVec 64) :=
.decCall ("big") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "nbd",
  Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]]) body631_69

def body631_71 : Prog (BitVec 64) :=
.dec ("nbd") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "blen", Flapjack.Exp.const 3#64])
  (Flapjack.Exp.const 2#64)) body631_70

def body631_72 : Prog (BitVec 64) :=
.seq body631_50 body631_71

def body631_73 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("digits_len") ([Flapjack.Exp.var Flapjack.VarKind.local "md", Flapjack.Exp.var Flapjack.VarKind.local "nmd"]) body631_72

def body631_74 : Prog (BitVec 64) :=
.seq body631_0 body631_73

def body631_75 : Prog (BitVec 64) :=
.decCall ("md") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nmd", Flapjack.Exp.const 8#64],
      Flapjack.Exp.const 8#64]]) body631_74

def body631_76 : Prog (BitVec 64) :=
.dec ("nmd") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "mlen", Flapjack.Exp.const 3#64])
  (Flapjack.Exp.const 2#64)) body631_75

def body631_77 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body631_76

def originalData631 : Decl (BitVec 64) :=
.function { name := "modexp", inline := false, exported := false, params := [("bp", Flapjack.Shape.one), ("blen", Flapjack.Shape.one), ("ep", Flapjack.Shape.one), ("elen", Flapjack.Shape.one),
  ("mp", Flapjack.Shape.one), ("mlen", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body631_47, returnShape := (Flapjack.Shape.one) }
def simplifiedData631 : Decl (BitVec 64) :=
.function { name := "modexp", inline := false, exported := false, params := [("bp", Flapjack.Shape.one), ("blen", Flapjack.Shape.one), ("ep", Flapjack.Shape.one), ("elen", Flapjack.Shape.one),
  ("mp", Flapjack.Shape.one), ("mlen", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body631_77, returnShape := (Flapjack.Shape.one) }
def original631 := Pancake.PanLang.declToHOL originalData631
def simplified631 := Pancake.PanLang.declToHOL simplifiedData631
end InitECandidate.Proofs.FrontendStages.Declarations
